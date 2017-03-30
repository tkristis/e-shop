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

  $('ul.nav li.dropdown').hover(function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
  }, function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
  });

  $(window).scroll(function(){                          
    if ($(this).scrollTop() > 200) {
      $('.fixed-menu').fadeIn(500);
    } else {
      $('.fixed-menu').fadeOut(500);
    }
  });
});