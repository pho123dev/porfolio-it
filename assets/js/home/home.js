(function ($) {
	function owlCarousel_init() {
		$(".slider-1").owlCarousel({
			autoplay: false,
			lazyLoad: true,
			loop: true,
			dots: false,
			autoHeight: false,
			animateOut: "fadeOut",
			autoplayTimeout: 2000,
			smartSpeed: 800,
			responsiveClass: true,
			responsive: {
				0 : {
					items: 1,
					nav: true
				},
				600 : {
					items: 1,
					nav: true
				},
				1000 : {
					items: 1,
					nav: true,
				}
			}
		});
		$(".slider-2").owlCarousel({
			autoplay: false,
			lazyLoad: true,
			loop: true,
			dots: true,
			autoplayTimeout: 2000,
			smartSpeed: 800,
			responsiveClass: true,
			responsive: {
				0 : {
					items: 1,
					nav: false
				},
				600 : {
					items: 1,
					nav: false
				},
				1000 : {
					items: 2,
					nav: false,
				}
			}
		});
		$(".slider-3").owlCarousel({
			autoplay: false,
			lazyLoad: true,
			loop: true,
			autoplayTimeout: 2000,
			smartSpeed: 800,
			responsiveClass: true,
			responsive: {
				0 : {
					items: 1,
					nav: true
				},
				600 : {
					items: 1,
					nav: true
				},
				1000 : {
					items: 3,
					nav: true,
				}
			}
		});
		$(".slider-4").owlCarousel({
			autoplay: false,
			lazyLoad: true,
			loop: true,
			dots: true,
			autoplayTimeout: 2000,
			smartSpeed: 800,
			responsiveClass: true,
			responsive: {
				0 : {
					items: 1,
					nav: false
				},
				600 : {
					items: 2,
					nav: false,
					margin:20,
				},
				1000 : {
					items: 4,
					nav: false,
					margin:40,
				}
			}
		});
		$(".slider-5").owlCarousel({
			autoplay: false,
			lazyLoad: true,
			loop: true,
			dots: false,
			autoplayTimeout: 2000,
			smartSpeed: 2500,
			responsiveClass: true,
			responsive: {
				0 : {
					items: 2,
					nav: true
				},
				600 : {
					items: 3,
					nav: true
				},
				1000 : {
					items: 5,
					nav: true,
				}
			}
		});
		
	}
	owlCarousel_init();
})(jQuery);
function openCity(d, e) {
	var b, c, a;
	c = document.getElementsByClassName("tabcontent");
	for (b = 0; b < c.length; b++) {
		c[b].style.display = "none"
	}
	a = document.getElementsByClassName("tablinks");
	for (b = 0; b < a.length; b++) {
		a[b].className = a[b].className.replace(" active", "")
	}
	document.getElementById(e).style.display = "block";
	d.currentTarget.className += " active"
}
jQuery(document).ready(function () {
	jQuery('.counter').each(function() {
		var $this = jQuery(this),
		countTo = $this.attr('data-count');
		jQuery({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		{
			duration: 8000,
			easing:'linear',
			step: function() {
				$this.text(Math.floor(this.countNum));
			},
			complete: function() {
				$this.text(this.countNum);
			}
		});  
	});
});
jQuery(document).ready(function(){
	var open_btn = jQuery('.popup-btn'),
	popup = jQuery('.popup'),
	close_btn = jQuery('.close-popup'),
	body  = jQuery('body');

	open_btn.on('click', function() {
		popup.fadeIn();
		body.addClass('popup-active');
	});

	close_btn.on('click', function() {
		popup.fadeOut();
		body.removeClass('popup-active');
	});
	jQuery(document).on('click', function(e) {
		if( jQuery(e.target).hasClass('popup') ) {
			jQuery(popup).fadeOut();
			body.removeClass('popup-active');
		}
	});
});
