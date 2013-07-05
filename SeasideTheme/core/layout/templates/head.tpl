<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="{$LANGUAGE}" class="ie6"> <![endif]-->
<!--[if IE 7 ]> <html lang="{$LANGUAGE}" class="ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="{$LANGUAGE}" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="{$LANGUAGE}" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="{$LANGUAGE}"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="cleartype" content="on">
	<meta name="generator" content="Fork CMS" />
	{$meta}
	{$metaCustom}

	<!-- Mobile settings http://t.co/dKP3o1e -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- About this document -->
	<meta name="description" content="">
	<meta name="author" content="">
	<title>{$pageTitle}</title>

	<!-- Custom modernizr build: http://modernizr.com — load other JavaScript at the end of document -->
	<script src="{$THEME_URL}/core/js/modernizr.custom.js"></script>

	<!-- Stylesheets -->
	{iteration:cssFiles}
		<link rel="stylesheet" href="{$cssFiles.file}" />
	{/iteration:cssFiles}
	<script src="//use.edgefonts.net/poiret-one.js"></script> 
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,300' rel='stylesheet' type='text/css'>
	<!-- <link rel="stylesheet" href="fonts/fonts.css" type="text/css" charset="utf-8" />
	<link rel="stylesheet" href="css/screen.css"> -->

	<!-- Enable HTML5 in IE<9 -->
	<!--[if lt IE 9  & (!IEMobile)]><script src="js/html5shiv.js"></script><![endif]-->
	<link rel="icon" href="{$THEME_URL}/favicon.png">
	<!--
		Place all other favicons in website root (e.g. http://web.dev/favicon.ico).
		Add your font license here, if necessary.
	-->
</head>