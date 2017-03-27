var refreshRating = function() {

  // Product coment review stars 
  $('.rating').raty( { path: '/assets/raty', scoreName: 'comment[rating]' 
});
  $('.rated').raty({ path: '/assets/raty',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
};

$(document).on('turbolinks:load', function(){
    refreshRating();

  // Product image zoom 
  $('.img-zoom').elevateZoom({
    zoomType: "inner",
    cursor  : "crosshair",
    easing: "true"
  }); 
});