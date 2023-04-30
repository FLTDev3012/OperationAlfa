import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["sectionBtnFilter", "sectionBigFilter" ]
  connect() {
    console.log("Filter js connected")
  }

  openBigFilter() {
    // au clic on passe en display
    this.sectionBigFilterTarget.classList.remove("d-none")
    this.sectionBtnFilterTarget.classList.add("d-none")
  }


}
