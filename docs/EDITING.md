# Editing this site

Content is separate from presentation. Edit data, not templates.

| To change                               | Edit                                                                                                                                                           |
| --------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name, headline, bio, headline numbers   | `_data/profile.yml` (also set `cv_pdf`; drop the PDF at that path and the CV page shows a download button)                                                     |
| Add a news item                         | Append a block to `_data/news.yml` (format is documented at the top of the file). The home page shows the latest four, `/news/` shows all.                     |
| Add or fix a publication                | `_data/publications.yml`. `published` entries get DOI links, filters and topic tags; `in_progress` entries appear in "Under review". Add `code:` or `dataset:` |
| Research themes                         | `_data/research.yml` (reference publications by `id` and projects by file name)                                                                                |
| Positions, education                    | `_data/experience.yml`, `_data/education.yml`                                                                                                                  |
| Teaching, service, grants, awards       | `_data/service.yml`                                                                                                                                            |
| Skills                                  | `_data/skills.yml`                                                                                                                                             |
| Public GitHub repositories              | `_data/repositories.yml` (hand-maintained snapshot; no third-party widgets)                                                                                    |
| A project case study                    | A new file in `_projects/` (copy an existing one). `featured: true` puts it on the home page; `order` sorts it.                                                |
| Profile links (Scholar, ORCID, GitHub…) | `_data/socials.yml`                                                                                                                                            |

Presentation lives in `_layouts/site.liquid`, `_layouts/project.liquid`, `_includes/site/*.liquid` and `assets/css/site.css`.

Build locally with `bundle exec jekyll build` (use a UTF-8 locale, e.g. `LANG=C.UTF-8`).
