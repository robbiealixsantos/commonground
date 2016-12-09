$( document ).on('turbolinks:load', function() {

   $(function(){
   if($('body').is(".president-game")){
      presidentMemory();
    }
   });

});