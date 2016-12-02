$("#prog li a[href^='#']").on('click', function(e) {

       // prevent default anchor click behavior
       e.preventDefault();
       
       // animate
       $('html, body').animate({
           scrollTop: $(this.hash).offset().top-75
         }, 300, function(){
   
           // when done, add hash to url
           // (default click behaviour)
           window.location.hash = this.hash;
         });

    });