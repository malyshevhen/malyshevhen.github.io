document.addEventListener("DOMContentLoaded", function () {
  var summaries = document.querySelectorAll("summary");
  for (var i = 0; i < summaries.length; i++) {
    summaries[i].addEventListener("click", function () {
      this.parentNode.classList.toggle("open");
    });
  }
});
