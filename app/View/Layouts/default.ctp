<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="HandheldFriendly" content="True" />
	
	<meta name="description" content=""/>
	<meta name="author" content="Micheletti"/>
	<meta name="keywords" content=""/>
	
	
	<?php echo $this->Html->charset(); ?>
	<title><?php echo "Micheletti - Civil Engineering and Building Construction in Ghana | ".$title_for_layout; ?></title>
	<?php
		echo $this->Html->meta('icon');
	
		echo $this->Html->css('foundation.min.css');
		echo $this->Html->css('font-awesome.min.css');
		echo $this->Html->css('jquery.gridder.min.css');
		echo $this->Html->css('owl.carousel.min.css');
		echo $this->Html->css('owl.theme.default.min.css');
	?>
	<!-- LayerSlider stylesheet -->
	<link rel="stylesheet" href="<?php echo $this->Html->url(DS.'layerslider'.DS.'css'.DS.'layerslider.css', true); ?>" type="text/css">	
	<?php
		echo $this->Html->css('app.css');
		echo $this->Html->css('admin'.DS.'style.css');
		echo $this->Html->script('vendor'.DS.'jquery');
	?>
	
	<link rel="stylesheet" type="text/css" href="<?php echo $this->Html->url(DS.'fancybox'.DS.'dist'.DS.'jquery.fancybox.min.css', true); ?>" media="screen" />
	<?php
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>
	<?php 
		echo $this->fetch('content'); 
		echo $this->element('admin'.DS.'menu');
		echo $this->Html->script('vendor'.DS.'what-input');
		echo $this->Html->script('vendor'.DS.'foundation.min');
		echo $this->Html->script('vendor'.DS.'jquery.gridder.min');
		echo $this->Html->script('vendor'.DS.'owl.carousel.min');
		echo $this->Html->script('vendor'.DS.'jquery.form');
		
		//echo $this->Html->script('foundation.min');
	?>
	<script src="<?php echo $this->Html->url(DS.'fancybox'.DS.'dist'.DS.'jquery.fancybox.min.js', true); ?>"></script>
  	<!-- External libraries: GreenSock -->
  	<script src="<?php echo $this->Html->url(DS.'layerslider'.DS.'js'.DS.'greensock.js', true); ?>" type="text/javascript"></script>
  	<!-- LayerSlider script files -->
  	<script src="<?php echo $this->Html->url(DS.'layerslider'.DS.'js'.DS.'layerslider.transitions.js', true); ?>" type="text/javascript"></script>
  	<script src="<?php echo $this->Html->url(DS.'layerslider'.DS.'js'.DS.'layerslider.kreaturamedia.jquery.js', true); ?>" type="text/javascript"></script>
	<?php
		echo $this->Html->script('app');
		echo $this->Html->script('admin'.DS.'fancybox');
	?>
</body>
</html>