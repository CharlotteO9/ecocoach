import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "form", "list"]

  search() {
    const csrfToken = document.querySelector('[name="csrf-token"]').content
    const checkedCategoryInputs = Array.from(document.querySelectorAll('[name="search[category][]"]')).filter(e => e.checked)
    if (checkedCategoryInputs.length > 0) {
      const categoryValues = []
      checkedCategoryInputs.forEach((input) => {
        const queryString = `&search[category][]=${input.value}`
        categoryValues.push(queryString)
      })
      var categoryQuery = categoryValues.join('')
    } else {
      var categoryQuery = ''
    }
    const url = `${this.formTarget.action}?search[query]=${this.inputTarget.value}&commit=Search${categoryQuery}`
    const options = {
      method: 'GET',
      headers: {
        'Accept': 'application/json',
        'X-CSRF-Token': csrfToken
      }
    }

    fetch(url, options)
      .then(response => response.json())
      .then((data) => {
        this.listTarget.innerHTML = data.html
      })
  }
}
