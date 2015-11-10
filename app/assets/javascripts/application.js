// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require unviel
//= require_tree .
$(document).foundation();

SetSlidePanelPosition = function(){
  $('.project-gallery__item').each(function(index, item){
    var $item = $(item);
    var itemHeight = $item.height();
    var titleHeight = $item.find('.project-gallery__item-overlay-panel').height();
    var availableHeight = (itemHeight - titleHeight);
    var descriptionHeight = $item.find('.project-gallery__item-description').height();
    var paddingOffset = (availableHeight - descriptionHeight)/2 + 27;
    $(item).find('.project-gallery__item-description').css('bottom', paddingOffset);
  });
};

$(window).on("load", function() {
  $("img").unveil(300, function() {
    $(this).load(function() {
      SetSlidePanelPosition();
    });
  });
});

$(window).on('resize', Foundation.utils.throttle(function(e){
  SetSlidePanelPosition();
}, 300));

$(document).ready(function(){
  $("#new_inquiry").on("ajax:success", function(e, data, status, xhr){
    $(this)[0].reset();
    $(".server-status-message").html("<span class='success'>Message sent, thanks for reaching out.</span>")
  }).on("ajax:error", function(e, xhr, status, error){
    $(".server-status-message").html('<span class="error">'+xhr.responseText+'</span>')
  })
})