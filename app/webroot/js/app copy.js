$(document).ready(function () {
	jQuery("#layerslider").layerSlider({
		type: 'fullsize',
		allowFullscreen:false,
		fullSizeMode:'hero',
		fitScreenWidth:true,
		pauseOnHover:'disabled',
		skinsPath: './layerslider/skins/',
		maxRatio: 1
		// parallaxScrollReverse: true
	});

	jQuery("#layerslider-i").layerSlider({
		allowFullscreen:false,
		fullSizeMode:'hero',
		fitScreenWidth:true,
		skinsPath: './layerslider/skins/',
		maxRatio: 1
		// parallaxScrollReverse: true
	});
	
	$('#carousel').owlCarousel({
	    loop:true,
	    nav:true,
	    margin:0,
		navText:['<span class="fa fa-angle-left fa-2x"></span>', '<span class="fa fa-angle-right fa-2x"></span>'],
		dots:false,
		autoplay:true,
		autoWidth:true,
		autoHeight:true,
		lazyLoad: true,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },            
	        960:{
	            items:2
	        },
	        1200:{
	            items:3
	        }
	    }
	});
	
    $(".gridder").gridderExpander({
        scrollOffset: 60,
        scrollTo: "panel", // "panel" or "listitem"
        animationSpeed: 400,
        animationEasing: "easeInOutExpo",
        nextText: '<span class="fa fa-angle-right fa-1x"></span>',
        prevText: '<span class="fa fa-angle-left fa-1x"></span>',
        closeText: '<span class="fa fa-close fa-1x"></span>',  
        onStart: function () {
            console.log("Gridder Inititialized");
        },
        onExpanded: function (object) {
            console.log("Gridder Expanded");
            $(".carousel").carousel();
        },
        onChanged: function (object) {
            console.log("Gridder Changed");
        },
        onClosed: function () {
            console.log("Gridder Closed");
        }
    });
});

$(document).foundation()
