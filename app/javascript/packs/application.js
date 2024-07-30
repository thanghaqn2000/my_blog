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

document.addEventListener("turbolinks:load", function() {
  tinymce.remove();
  tinymce.init({
    selector: 'textarea.tinymce',
    plugins: 'image code',
    toolbar: 'undo redo | link image | code',
    height: 500,
    image_title: true,
    automatic_uploads: true,
    images_upload_url: '/upload_image', // Endpoint để upload ảnh
    file_picker_types: 'image',
    file_picker_callback: function(callback, value, meta) {
      if (meta.filetype === 'image') {
        var input = document.createElement('input');
        input.setAttribute('type', 'file');
        input.setAttribute('accept', 'image/*');
        input.onchange = function() {
          var file = this.files[0];
          var reader = new FileReader();
          reader.onload = function() {
            var id = 'blobid' + (new Date()).getTime();
            var blobCache = tinymce.activeEditor.editorUpload.blobCache;
            var base64 = reader.result.split(',')[1];
            var blobInfo = blobCache.create(id, file, base64);
            blobCache.add(blobInfo);
            callback(blobInfo.blobUri(), { title: file.name });
          };
          reader.readAsDataURL(file);
        };
        input.click();
      }
    }
  });
});

