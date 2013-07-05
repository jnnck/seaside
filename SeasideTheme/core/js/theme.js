var jsTheme =
{
	// init, something like a constructor
	init: function()
	{
		jsTheme.mobileNav.init();
		// for testing purposes. Check your console. Delete after you finished reading this. :-)
	}

};

jsTheme.mobileNav =
{
	init: function()
	{
		jsTheme.mobileNav.enableMobileNav();
		jsTheme.mobileNav.buildMobileNav();
	},

	// CSS is based on the class .mobile-nav
	//
	enableMobileNav: function()
	{
		$("html").addClass("mobile-nav");
	},

	// build mobile nav
	buildMobileNav: function()
	{
		var navHolder = $('.header .inner');

		navHolder.prepend('<span class="main-nav-trigger">menu</span>');

		var trigger = $('.main-nav-trigger');
		var nav = $('.main-nav');

		trigger.on('click', function() {
			nav.toggle();
			$(this).toggleClass("trigger-active");
		});
	}
};

$(document).ready(function(){
	$('a.socialPopup').click(function(event) {
		var width  = 575,
		height = 400,
		left   = ($(window).width()  - width)  / 2,
		top    = ($(window).height() - height) / 2,
		url    = this.href,
		opts   = 'status=1' +
		',width='  + width  +
		',height=' + height +
		',top='    + top    +
		',left='   + left;
		window.open(url, 'social-popup', opts);

		return false;
	});
})

$(jsTheme.init);