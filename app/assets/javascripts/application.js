// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){


$(document).on("click", "#newbutton", function(e){
   $('.forum-tours').show();
   $('#newbutton').hide();
   $('#hidebut').show();
});

$(document).on("click", "#hidebut", function(e){
   $('.forum-tours').hide();
   $('#newbutton').show();
});
$(document).on("click", "#newbutton", function(e){
   $('.forum').show();
   $('#newbutton').hide();
   $('#hidebut').show();
});
$(document).on("click", "#hidebut", function(e){
   $('.forum').hide();
   $('#newbutton').show();
   $('#hidebut').hide();
});

$(document).on("click", "#show-event", function(e){
   $('.forum-events').show();
   $('#newbutton').show();
});

$(document).on("click", "#new-event", function(e){
   $('.forum-events').show();
   $('#newbutton').show();
});
$(document).on("click", "#hide-event", function(e){
   $('.forum-events').hide();
   $('#newbutton').show();

});
  $('.collapsible').collapsible();
});
