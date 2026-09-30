// Progressive enhancement for the publications page: without JavaScript every entry stays visible.
(function () {
  var list = document.getElementById("pub-list");
  if (!list) return;
  var items = Array.prototype.slice.call(list.querySelectorAll(".site-pub"));
  var q = document.getElementById("f-q");
  var year = document.getElementById("f-year");
  var type = document.getElementById("f-type");
  var topic = document.getElementById("f-topic");
  var count = document.getElementById("pub-count");
  var empty = document.getElementById("pub-empty");

  function apply() {
    var text = q.value.trim().toLowerCase();
    var shown = 0;
    items.forEach(function (li) {
      var ok =
        (!year.value || li.dataset.year === year.value) &&
        (!type.value || li.dataset.type === type.value) &&
        (!topic.value || (" " + li.dataset.topics + " ").indexOf(" " + topic.value + " ") !== -1) &&
        (!text || li.dataset.text.indexOf(text) !== -1);
      li.hidden = !ok;
      if (ok) shown += 1;
    });
    count.textContent = "Showing " + shown + " of " + items.length;
    empty.hidden = shown !== 0;
  }

  [q, year, type, topic].forEach(function (el) {
    el.addEventListener("input", apply);
    el.addEventListener("change", apply);
  });
  document.getElementById("f-reset").addEventListener("click", function () {
    // reset fires before the form values clear, so apply on the next tick
    setTimeout(apply, 0);
  });

  // Allow deep links such as /publications/?topic=flood&type=journal
  var params = new URLSearchParams(window.location.search);
  if (params.get("topic")) topic.value = params.get("topic");
  if (params.get("type")) type.value = params.get("type");
  if (params.get("year")) year.value = params.get("year");
  apply();
})();
