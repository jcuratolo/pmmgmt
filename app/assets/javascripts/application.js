// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require skrollr
//= require skrollr.menu
//= require_tree .

$(document).ready(function () {

    $('#tabs').tab();

    $('#tabs a').click(function (e) {
      $('ul.nav-tabs li.active').removeClass('active')
      $(this).parent('li').addClass('active')
    });



    $('#togglenav').hide();
      $('#menubutton').click(function() {
          $('#togglenav').slideToggle("900");
          return false;
      });

    $('.carousel').carousel({
        interval: 3000
      });

 $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
    if (target.length) {
  $('html,body').animate({scrollTop: target.offset().top}, 1000);
        return false;
      }
    }
  });
}); 

}); 