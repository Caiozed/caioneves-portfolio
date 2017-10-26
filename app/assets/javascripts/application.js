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
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function(){
   var screenSize = $("html").width();;
   $("input[type='file']").on("change", function(){
       $(".inputlabel > label").text($(this).val().split("\\").pop()); 
   }); 
   
   //Scree size update for responsive design
   $(window).resize(function(){
      screenSize = $("html").width();
   });
   
   //Responsive sidebar
   if( screenSize > 999 ){
      $(".sidebar-content").animate({width: "toggle"}, 0)
      $(".options-toggle").on("click", function(){
         $(".sidebar-content").animate({width: "toggle"}, 270)
      });
   }else{
       $(".sidebar-content").animate({height: "toggle"}, 0)
       $(".options-toggle").on("click", function(){
         $(".sidebar-content").animate({height: "toggle"}, 270)
      });
   }
   
   $(".style-toggler").on("click", function(){
      $(this).toggleClass("toggler-btn-light");
      $(".content").toggleClass("light-theme");
   });
   
   scrollTo( $("#home"), $(".home"));
   scrollTo( $("#about"), $(".about"));
   scrollTo( $("#work"), $(".work"));
   scrollTo( $("#projects"), $(".projects"));
   scrollTo( $("#contact"), $(".contact"));
});

function scrollTo(id, element){
   if(id && element){
      id.on("click", function() {
         $("html, body").animate({ scrollTop: element.first().offset().top }, 500);
      });
   }
};