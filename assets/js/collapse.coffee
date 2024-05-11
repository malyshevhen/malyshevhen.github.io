---
---

document.addEventListener 'DOMContentLoaded', ->
  summaries = document.querySelectorAll 'summary'
  for summary in summaries
    summary.addEventListener 'click', ->
      @parentNode.classList.toggle 'open'
