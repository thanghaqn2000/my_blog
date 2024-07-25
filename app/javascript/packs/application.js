// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// import "packs/accordions"
// import "packs/custom"
// import "packs/isotope"
// import "packs/owl"
// import "packs/slick"
// import "packs/test"

//= require jquery3
//= require popper
//= require bootstrap-sprockets

import * as ActiveStorage from "@rails/activestorage"
import Rails from "@rails/ujs"
import "channels"
import Turbolinks from "turbolinks"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
