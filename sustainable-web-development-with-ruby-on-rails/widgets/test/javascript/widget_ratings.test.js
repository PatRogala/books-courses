const jsdom = require("jsdom");
const { JSDOM } = jsdom;

test("clicking on a rating manipulates the DOM", (done) => {
  const dom = new JSDOM(`
    <div data-no-rating-present>
      Shown when there is no rating
    </div>
    <div data-rating-present class="dn">
      Shown when there IS a rating
      <span data-rating-label></span>
    </div>

    <input type="submit" data-rating value="1">
    <input type="submit" data-rating value="2">
  `)

  const document = dom.window.document
  const whenRatingPresent = document.querySelector("[data-rating-present]")
  const whenNoRating = document.querySelector("[data-no-rating-present]")
  const ratingLabel = document.querySelector("[data-rating-label]")

  require("widget_ratings").start(dom.window)

  dom.window.addEventListener("DOMContentLoaded", () => {
    document.querySelector("input[data-rating][value='2']").click()
    try {
      expect (whenRatingPresent.classList.contains("db")).toBe(true)
      expect (whenNoRating.classList.contains("dn")).toBe(true)
      expect(ratingLabel.innerText).toBe("2")
      done()
    } catch (error) {
      done(error)
    }
  })
})