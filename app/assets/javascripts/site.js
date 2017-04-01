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

  // Dropdown menu
  $('ul.nav li.dropdown').hover(function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
  }, function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
  });

  // Fixed Navigation
  $(window).scroll(function(){                          
    if ($(this).scrollTop() > 150) {
      $('.fixed-menu').fadeIn(500);
    } else {
      $('.fixed-menu').fadeOut(500);
    }
  });

  // Landing page categories overview
  $('.slide').hover(
    function(){
      $(this).find('.caption').fadeIn(250);
    },
    function(){
      $(this).find('.caption').fadeOut(250);
    }
  );
});