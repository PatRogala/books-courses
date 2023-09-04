const updateUIWithRating = function(document, rating) {
  document.querySelectorAll("[data-rating-present]").
    forEach( (element) => {
      element.classList.add("db")
      element.classList.remove("dn")
  });

  document.querySelectorAll("[data-no-rating-present]").
    forEach( (element) => {
      element.classList.add("dn")
  });

  document.querySelectorAll("[data-rating-label]").
    forEach( (element) => {
      element.innerText = `${rating}`
  });
}

const start = function(window) {
  const document = window.document;
  window.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll("input[type='submit'][data-rating"
    ).forEach( (element) => {
      element.onclick = (event) => {
        const rating = element.value
        event.preventDefault()
        updateUIWithRating(document, rating)
      }
    });
  });
}

module.exports = {
  start: start
}