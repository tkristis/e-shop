$(document).on('turbolinks:load', function(){

  // Product coment review stars 
  $('.rating').raty( { path: '/assets/raty', scoreName: 'comment[rating]' 
});
  $('.rated').raty({ path: '/assets/raty',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });

  // Product image zoom 
  $('.img-zoom').elevateZoom({
    zoomType: "inner",
    cursor  : "crosshair",
    easing: "true"
  }); 

  // Disable image zoom to width 768px
  $('.img-zoom').click(function(){
   if($(window).width()>768){
        $(this).elevateZoom({
            zoomWindowPosition:1,
            zoomWindowOffetx: 5,
            zoomWindowWidth:$(this).width(), 
            zoomWindowHeight:$(this).height(),
        }); 
    }
    else{
        $.removeData($(this), 'elevateZoom');//remove zoom instance from image
        $('.zoomContainer').remove(); // remove zoom container from DOM
        return false;
    }
});
});