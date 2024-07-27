
jQuery(window).load(function(){
  setTimeout(function() {
    jQuery(".popup-overlay").fadeIn();
  }, 1000); 
});
jQuery(".close-overlay").click(function(){
  jQuery(".popup-overlay").fadeOut();
});
  jQuery('.activities .owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      autoplay: false,
      nav: true,
      navText: [
          "<i class='fa fa-caret-left'></i>",
          "<i class='fa fa-caret-right'></i>"
      ],
      autoplay: true,
      autoplayHoverPause: true,
      responsive: {
          0: {
              items: 1
          },
          600: {
              items: 3
          },
          1000: {
              items: 4
          }
      }
  })
  // HERO SLIDER
  setTimeout(() => {
    var menu = [];
  jQuery('.swiper-slide').each(function (index) {
      menu.push(jQuery(this).find('.slide-inner').attr("data-text"));
  });
  var interleaveOffset = 0.5;
  var swiperOptions = {
      loop: true,
      speed: 1000,
      parallax: true,
      autoplay: {
          delay: 6500,
          disableOnInteraction: false,
      },
      watchSlidesProgress: true,
      pagination: {
          el: '.swiper-pagination',
          clickable: true,
      },
      navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
      },
      on: {
          progress: function () {
              var swiper = this;
              for (var i = 0; i < swiper.slides.length; i++) {
                  var slideProgress = swiper.slides[i].progress;
                  var innerOffset = swiper.width * interleaveOffset;
                  var innerTranslate = slideProgress * innerOffset;
                  swiper.slides[i].querySelector(".slide-inner").style.transform =
                      "translate3d(" + innerTranslate + "px, 0, 0)";
              }
          },
          touchStart: function () {
              var swiper = this;
              for (var i = 0; i < swiper.slides.length; i++) {
                  swiper.slides[i].style.transition = "";
              }
          },
          setTransition: function (speed) {
              var swiper = this;
              for (var i = 0; i < swiper.slides.length; i++) {
                  swiper.slides[i].style.transition = speed + "ms";
                  swiper.slides[i].querySelector(".slide-inner").style.transition =
                      speed + "ms";
              }
          }
      }
  };
  var swiper = new Swiper(".swiper-container", swiperOptions);
  // DATA BACKGROUND IMAGE
  var sliderBgSetting = jQuery(".slide-bg-image");
  sliderBgSetting.each(function (indx) {
      if (jQuery(this).attr("data-background")) {
          jQuery(this).css("background-image", "url(" + jQuery(this).data("background") + ")");
      }
  });
  }, 5000);


  jQuery('.counter').counterUp({
      delay: 10,
      time: 2000
  });
  jQuery('.counter').addClass('animated fadeInDownBig');
  jQuery('.counter-title').addClass('animated fadeIn');


  jQuery(function () {
      jQuery(".demo1").bootstrapNews({
          newsPerPage: 1,
          autoplay: true,
          pauseOnHover: true,
          navigation: false,
          direction: 'down',
          newsTickerInterval: 1500,
          onToDo: function () {}
      });
  });


  jQuery(document).ready(function (jQuery) {

      setTimeout(() => {
        jQuery('.card-slider').slick({
          dots: true,
          infinite: true,
          margin: 0,
          speed: 500,
          slidesToShow: 4,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 2000,
          arrows: true,
          responsive: [{
                  breakpoint: 1024,
                  settings: {
                      slidesToShow: 3,
                      slidesToScroll: 1
                  }
              },
              {
                  breakpoint: 767,
                  settings: {
                      slidesToShow: 2,
                      slidesToScroll: 1
                  }
              },
              {
                  breakpoint: 540,
                  settings: {
                      arrows: false,
                      slidesToShow: 1,
                      slidesToScroll: 1
                  }
              }
          ]
      });
      }, 500);
  });


  jQuery('.carousel-faculty').owlCarousel({
      items: 5,
      loop: true,
      autoplay: true,
      autoplayTimeout: 1800,
      margin: 10,
      nav: true,
      dots: false,
      mouseDrag: true,
      responsiveClass: true,
      responsive: {
          0: {
              items: 1
          },
          540: {
              items: 2
          },
          769: {
              items: 3
          },
          1024: {
              items: 5
          }
      },
      navText: ['<span class="fas fa-arrow-left fa-2x"></span>',
          '<span class="fas fa-arrow-right fa-2x"></span>'
      ],
  })


  setTimeout(() => {
    jQuery('.carousel-awards').owlCarousel({
      items: 1,
      loop: true,
      autoplay: true,
      autoplayTimeout: 3000,
      margin: 10,
      nav: true,
      dots: false,
      mouseDrag: true,
      responsiveClass: true,
      responsive: {
          0: {
              items: 1
          },
          540: {
              items: 1
          },
          769: {
              items: 1
          },
          1024: {
              items: 1
          }
      },
      navText: ['<span class="fas fa-arrow-left fa-2x"></span>',
          '<span class="fas fa-arrow-right fa-2x"></span>'
      ],
  })

  //logo slider
  jQuery('.logos-slider').slick({
      slidesToShow: 6,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 1800,
      arrows: false,
      dots: true,
      pauseOnHover: true,
      responsive: [{
          breakpoint: 768,
          settings: {
              slidesToShow: 3
          }
      }, {
          breakpoint: 520,
          settings: {
              slidesToShow: 2
          }
      }, {
          breakpoint: 420,
          settings: {
              slidesToShow: 1
          }
      }]
  });

  }, 1000);


  

jQuery(document).ready(function () {
      jQuery('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
          disableOn: 700,
          type: 'iframe',
          mainClass: 'mfp-fade',
          removalDelay: 160,
          preloader: false,
          fixedContentPos: false
      });
  });


  // Example 1: From an element in DOM
  jQuery('.open-popup-link').magnificPopup({
      type: 'inline',
      midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
  });

setTimeout(() => {
jQuery(".testimonial-content").owlCarousel({
      loop: true,
      items: 3,
      margin: 50,
      dots: true,
      nav: false,
      mouseDrag: true,
      autoplay: false,
      autoplayTimeout: 4000,
      smartSpeed: 800,
      responsive: {
          0: {
              items: 1
          },
          540: {
              items: 2
          },
          769: {
              items: 2
          },
          1024: {
              items: 3
          }
      },
      navText: ['<span class="fas fa-arrow-left fa-2x"></span>',
          '<span class="fas fa-arrow-right fa-2x"></span>'
      ],
  });
}, 1000);
 
setTimeout(() => {
jQuery(".viewmore-notice-btn").click(function() {
  jQuery('.notice-box-c').fadeToggle();
      })
      jQuery(".close-notice").click(function(){
  jQuery(".notice-box-c").fadeOut();
});
}, 500);