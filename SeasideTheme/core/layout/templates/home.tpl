{include:core/layout/templates/head.tpl}

<body class="seaside home">
	<!--[if lt IE 7]>
	<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
	<![endif]-->
	{include:core/layout/templates/header.tpl}
	<div class="holder intro-holder">
		<section class="row intro-row">
			<div class="main-content">
				<div class="inner">
					{option:!hideContentTitle}
							<h2>{$page.title}</h2>
					{/option:!hideContentTitle}
					<div class="headertext">
						{iteration:positionTopleft}			
								{$positionTopleft.blockContent}
						{/iteration:positionTopleft}
					</div>
				</div>
			</div>
			<div class="main-col-4">
				<div class="inner mainside">
					<img class="failwhale" src="{$THEME_URL}/core/layout/images/seaside.png">
				</div>
			</div>
		</section>
	</div>
	<div class="holder main-holder">
		<div class="row">
			{iteration:positionMain}
				{$positionMain.blockContent}
			{/iteration:positionMain}
		</div>
	</div>
	{include:core/layout/templates/footer.tpl}
	<!-- Always Load jQuery First -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="{$THEME_URL}/core/js/jquery-1.8.3.min.js"><\/script>')</script>

	<!-- Make responsive website responsive in IE<9 -->
	<!--[if lt IE 9  & (!IEMobile)]><script src="js/respond.min.js"></script><![endif]-->

	<!-- Theme specific JavaScript. Add your other scripts here -->
	<script src="{$THEME_URL}/core/js/theme.min.js"></script>

	<!-- Google Analytics -->
	<script>
		var _gaq=[["_setAccount","UA-XXXXX-X"],["_trackPageview"]];
		(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
		g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
		s.parentNode.insertBefore(g,s)}(document,"script"));
	</script>
</body>
</html>