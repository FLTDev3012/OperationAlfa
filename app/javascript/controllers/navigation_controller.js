import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigation"
export default class extends Controller {
  static targets = ["popnav"]
  connect() {
    console.log("nav js connected")
  }

  openNav() {
    this.popnavTarget.classList.remove("d-none")
  }


  closeNav() {
    this.popnavTarget.classList.remove("d-none")
  }
}
