import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "form", "list"]

  search(event) {
    const csrfToken = document.querySelector('[name="csrf-token"]').content
    const checkedCategoryInputs = Array.from(document.querySelectorAll('[name="search[category][]"]')).filter(e => e.checked)
    if (checkedCategoryInputs.length > 0) {
      var categoryValue = checkedCategoryInputs[0].value
    } else {
      var categoryValue = ''
    }
    const url = `${this.formTarget.action}?search[category]=${categoryValue}&search[query]=${this.inputTarget.value}&commit=Search`
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
