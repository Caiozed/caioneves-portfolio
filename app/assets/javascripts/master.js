$(document).on("turbolinks:load", function(){
   var screenSize = $("html").width();;
   $("input[type='file']").on("change", function(){
       $(".inputlabel > label").text($(this).val().split("\\").pop()); 
   }); 
   
   //Stops app from sleep mode
   setInterval(function() {
    $.get("https://lit-sea-70393.herokuapp.com/");
   }, 300000); 
   
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