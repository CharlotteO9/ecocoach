import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-goal"
export default class extends Controller {
  static targets = ["goal"]
  connect() {
  }

  updateGoal(event) {
    this.goalTarget.innerHTML = `Set your weekly goal: ${event.currentTarget.value}%`
  }
}
