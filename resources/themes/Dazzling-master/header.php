<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package dazzling
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//use.typekit.net/oxw2tlq.js"></script>
<script>try{Typekit.load();}catch(e){}</script>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.5.0/slick.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo get_home_url(); ?>/resources/themes/Dazzling-master/slick/slick-theme.css"/>

<link rel="stylesheet" href="//cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
<script src="//cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>

<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
	<div class="secondary-navbar">
		<div class="container">
			<div class="social-media">
			<a href="https://www.facebook.com/profile.php?id=100008878187652"><i class="fa fa-facebook"></i></a>
			<a href="https://twitter.com/KateMorganWL"><i class="fa fa-twitter"></i></a>
			<a href="https://www.youtube.com/channel/UCnETdMUJ_mTgu6AKbyePR4w"><i class="fa fa-youtube-play"></i></a>
			<a href="https://www.pinterest.com/katem0335/"><i class="fa fa-pinterest"></i></a>
			<a href="#"><i class="fa fa-instagram"></i></a>
			<a href=""><i class="fa fa-mobile"></i>Download App</a>
			</div>
			<?php dazzling_secondary_header_menu(); ?>

		</div>
		
	</div>
<div id="page" class="hfeed site">
	
	
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			    <span class="sr-only">Toggle navigation</span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			  </button>

				<?php if( get_header_image() != '' ) : ?>

					<div id="logo">
						<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php header_image(); ?>"  height="<?php echo get_custom_header()->height; ?>" width="<?php echo get_custom_header()->width; ?>" alt="<?php bloginfo( 'name' ); ?>"/></a>
					</div><!-- end of #logo -->

				<?php endif; // header image was removed ?>

				<?php if( !get_header_image() ) : ?>

					<div id="logo">
						<span class="site-title"><a class="navbar-brand" href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></span>
					</div><!-- end of #logo -->

				<?php endif; // header image was removed (again) ?>

			</div>
				<?php dazzling_header_menu(); ?>
		</div>
	</nav><!-- .site-navigation -->