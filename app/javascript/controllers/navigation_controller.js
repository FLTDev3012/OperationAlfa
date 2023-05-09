import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigation"
export default class extends Controller {
  static targets = ["popnav", "lignes", "croix"]
  connect() {
    console.log("nav js connected")
  }

  openNav() {
    this.popnavTarget.classList.remove("d-none")
    this.lignesTarget.classList.add("d-none")
    this.croixTarget.classList.remove("d-none")

  }


  closeNav() {
    this.popnavTarget.classList.add("d-none")
    this.croixTarget.classList.add("d-none")
    this.lignesTarget.classList.remove("d-none")
  }
}
