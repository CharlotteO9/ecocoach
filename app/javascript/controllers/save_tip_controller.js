import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  save(event) {
    const url = event.params.url
    const options = {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'X-CSRF-Token': this.#csrfToken()
      }
    }

    fetch(url, options)
      .then(response => response.json())
      .then((data) => {
        if (data.errors) {
          console.error(data.errors)
        } else {
          this.element.outerHTML = data.html
        }
      })
  }

  unsave(event) {
    const url = event.params.url
    const options = {
      method: 'DELETE',
      headers: {
        'Accept': 'application/json',
        'X-CSRF-Token': this.#csrfToken()
      }
    }

    fetch(url, options)
      .then(response => response.json())
      .then((data) => {
        if (data.errors) {
          console.error(data.errors)
        } else {
          this.element.outerHTML = data.html
        }
      })
  }

  #csrfToken() {
    return document.querySelector('meta[name="csrf-token"]').content
  }
}
