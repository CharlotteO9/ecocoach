import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tips-card"
export default class extends Controller {
  connect() {
    console.log("Hello")
  }
  revealDescription() {
    event.currentTarget.classList.toggle('desc-truncate')
  }
}
