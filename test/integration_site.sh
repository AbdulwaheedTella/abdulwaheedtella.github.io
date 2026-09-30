#!/usr/bin/env bash
# Builds the site and checks that the pages, data-driven content and internal links this site depends on are present.
set -euo pipefail

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT
site="${tmp_dir}/site"

bundle exec jekyll build -d "${site}" >/dev/null

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

for page in index.html about research projects publications experience news cv contact; do
  path="${site}/${page}"
  [ -d "${path}" ] && path="${path}/index.html"
  [ -f "${path}" ] || fail "missing page: ${page}"
done

# Case-study pages exist, and the projects index links to each of them (link resolution is checked below)
project_pages="$(find "${site}/projects" -mindepth 2 -name index.html | wc -l)"
[ "${project_pages}" -ge 1 ] || fail "no project case-study pages were built"
project_links="$(grep -o 'href="/projects/[a-z0-9-]*/"' "${site}/projects/index.html" | sort -u | wc -l)"
[ "${project_links}" -eq "${project_pages}" ] || fail "projects index links ${project_links} pages but ${project_pages} were built"

# Data-driven content rendered
grep -q 'class="site-pub' "${site}/publications/index.html" || fail "publications page has no entries"
grep -q 'class="site-news' "${site}/news/index.html" || fail "news page has no entries"
grep -q 'class="site-timeline' "${site}/experience/index.html" || fail "experience page has no timeline"

# No unrendered Liquid or template leftovers
if grep -rlE '\{\{|\{%' "${site}" --include=index.html | grep -q .; then
  fail "unrendered Liquid found in built pages"
fi
if grep -rqi 'albert einstein' "${site}" --include=*.html; then
  fail "template placeholder content (Albert Einstein) found"
fi

# SEO basics
grep -q 'rel="canonical"' "${site}/index.html" || fail "home page has no canonical link"
grep -q 'property="og:title"' "${site}/index.html" || fail "home page has no Open Graph metadata"
grep -q 'application/ld+json' "${site}/index.html" || fail "home page has no structured data"
grep -q '<loc>' "${site}/sitemap.xml" || fail "sitemap.xml is empty"
grep -q 'Sitemap:' "${site}/robots.txt" || fail "robots.txt has no sitemap"

# Internal links and assets resolve
python3 - "${site}" <<'PY'
import glob, os, re, sys, urllib.parse
root = sys.argv[1]
broken = []
for f in glob.glob(root + "/**/*.html", recursive=True):
    if "/assets/" in f:
        continue
    html = open(f, encoding="utf8").read()
    for m in re.finditer(r'(?:href|src)="([^"#][^"]*)"', html):
        u = m.group(1)
        if u.startswith(("http", "mailto:", "data:", "javascript:", "//")):
            continue
        p = urllib.parse.urlparse(u).path
        t = root + p
        if p.endswith("/"):
            t += "index.html"
        if not (os.path.exists(t) or os.path.exists(t.rstrip("/") + "/index.html")):
            broken.append((f.replace(root, ""), u))
if broken:
    print("broken internal links:", broken[:10], file=sys.stderr)
    sys.exit(1)
PY

echo "site integration checks passed"
