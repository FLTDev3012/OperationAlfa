import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  static targets = ["sectionvehicule", "sectionpiece", "sectioncom", "sectionmember" ]
  connect() {
    console.log("Dashboard connected")
  }

  openvehicule() {
    // au clic on passe en display
    this.sectionvehiculeTarget.classList.remove("d-none")
    this.sectionpieceTarget.classList.add("d-none")
    this.sectioncomTarget.classList.add("d-none")
    this.sectionmemberTarget.classList.add("d-none")
  }

  openpiece() {
    // au clic on passe en display
    this.sectionvehiculeTarget.classList.add("d-none")
    this.sectionpieceTarget.classList.remove("d-none")
    this.sectioncomTarget.classList.add("d-none")
    this.sectionmemberTarget.classList.add("d-none")
  }

  opencom() {
    // au clic on passe en display
    this.sectionvehiculeTarget.classList.add("d-none")
    this.sectionpieceTarget.classList.add("d-none")
    this.sectioncomTarget.classList.remove("d-none")
    this.sectionmemberTarget.classList.add("d-none")
  }

  openmember() {
    // au clic on passe en display
    this.sectionvehiculeTarget.classList.add("d-none")
    this.sectionpieceTarget.classList.add("d-none")
    this.sectioncomTarget.classList.add("d-none")
    this.sectionmemberTarget.classList.remove("d-none")
  }
}
