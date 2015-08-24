<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package dazzling
 */
?>
	</div><!-- #content -->

	<div id="footer-area">
		
		<div class="container footer-inner">
			<?php if (is_front_page()){ get_sidebar( 'footer' ); }?>
		</div>

		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="site-info container">
				<?php dazzling_social(); ?>
				
				<div class="copyright col-md-8">

					<?php echo of_get_option( 'custom_footer_text', 'dazzling' ); ?>
					 <a style="margin-left: 20px" href="<?php echo get_home_url(); ?>/terms-of-use">Terms of use</a> | <a href="<?php echo get_home_url(); ?>/privacy-policy">Privacy Policy</a>
           | <a href="<?php echo get_home_url(); ?>/delivery-details">Delivery Details</a>
           | <a href="<?php echo get_home_url(); ?>/refund-policy">Refund Policy</a>
					<!--Custome theme footer info-->
					<?php //dazzling_footer_info(); ?>
				</div>

				<div class="col-md-4 payment-logo">
					<img src="<?php echo get_home_url(); ?>/resources/themes/Dazzling-master/images/logo/master.png"/>
					<img src="<?php echo get_home_url(); ?>/resources/themes/Dazzling-master/images/logo/visa.png"/>
					<img src="<?php echo get_home_url(); ?>/resources/themes/Dazzling-master/images/logo/paypal.png"/>
				</div>
			</div><!-- .site-info -->
			<div class="scroll-to-top"><i class="fa fa-angle-up"></i></div><!-- .scroll-to-top -->
		</footer><!-- #colophon -->
	</div>
</div><!-- #page -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="<?php echo get_home_url(); ?>/resources/themes/Dazzling-master/slick/slick.js"></script>

<script type='text/javascript' src='<?php echo get_home_url(); ?>/resources/plugins/gravityforms/js/jquery.maskedinput.min.js?ver=1.9.11'></script>



<script type="text/javascript">
$(document).ready(function(){
  $('#cart-button').toggle(function () {
    $(".cart-tab").removeClass("active-tab");
    $("#cart-tab-label").text("Show");
}, function () {
    $(".cart-tab").addClass("active-tab");
    $("#cart-tab-label").text("Hide");
});
  $('.testimonial').slick({
    	infinite: true,
	  slidesToShow: 5,
	  slidesToScroll: 5,
	  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
  });
  $('.range').slick({
    	infinite: true,
	  slidesToShow: 4,
	  slidesToScroll: 4,
	  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
  });


  //search box animation
  /*$('.fa-search').click(function(){
      $('.searchbox').slideToggle(500);
  });*/
});
$('.input-text.qty', 'ul.products').on('change', function() {
  $(this).closest('div').next('div').children().attr('data-quantity', $(this).val());
});


</script>

<?php if( is_page('register')): ?>
	<script type='text/javascript'> if(typeof gf_global == 'undefined') var gf_global = {"gf_currency_config":{"name":"U.S. Dollar","symbol_left":"$","symbol_right":"","symbol_padding":"","thousand_separator":",","decimal_separator":".","decimals":2},"base_url":"http:\/\/dev.xmarketing.com.au\/katemorgan\/resources\/plugins\/gravityforms","number_formats":[],"spinnerUrl":"http:\/\/dev.xmarketing.com.au\/katemorgan\/resources\/plugins\/gravityforms\/images\/spinner.gif"};jQuery(document).bind('gform_post_render', function(event, formId, currentPage){if(formId == 3) {if(!window['gf_text']){window['gf_text'] = new Array();} window['gf_text']['password_blank'] = 'Strength indicator'; window['gf_text']['password_mismatch'] = 'Mismatch';window['gf_text']['password_bad'] = 'Bad'; window['gf_text']['password_short'] = 'Short'; window['gf_text']['password_good'] = 'Good'; window['gf_text']['password_strong'] = 'Strong';gformShowPasswordStrength("input_3_18");gf_global["number_formats"][3] = {"6":false,"7":false,"8":false,"9":false,"10":false,"11":false,"12":false,"13":false,"14":false,"15":false,"16":false,"17":false,"18":false,"1":false,"2":"decimal_dot","3":"decimal_dot","4":"decimal_dot","5":"decimal_dot","19":false};new GFCalc(3, [{"field_id":5,"formula":"{Weight:3}\/(({Height:2}\/100) * ({Height:2}\/100))","rounding":"2"}]);if(!/(android)/i.test(navigator.userAgent)){jQuery('#input_3_11').mask('(999) 999-9999').bind('keypress', function(e){if(e.which == 13){jQuery(this).blur();} } );}if(!/(android)/i.test(navigator.userAgent)){jQuery('#input_3_12').mask('(999) 999-9999').bind('keypress', function(e){if(e.which == 13){jQuery(this).blur();} } );}} } );jQuery(document).bind('gform_post_conditional_logic', function(event, formId, fields, isInit){} );</script><script type='text/javascript'> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [3, 1]) } ); </script>
 <?php endif; ?>

<?php if( is_page('my-account')): ?>

<script type="text/javascript"> if(typeof gf_global == 'undefined') var gf_global = {"gf_currency_config":{"name":"U.S. Dollar","symbol_left":"$","symbol_right":"","symbol_padding":"","thousand_separator":",","decimal_separator":".","decimals":2},"base_url":"http:\/\/174.121.78.227\/~kmxmarketing\/resources\/plugins\/gravityforms","number_formats":[],"spinnerUrl":"http:\/\/174.121.78.227\/~kmxmarketing\/resources\/plugins\/gravityforms\/images\/spinner.gif"};jQuery(document).bind('gform_post_render', function(event, formId, currentPage){if(formId == 8) {gf_global["number_formats"][8] = {"1":"decimal_dot","2":"decimal_dot","3":"decimal_dot","4":"decimal_dot"};new GFCalc(8, [{"field_id":4,"formula":"{Weight:1}\/(({Height:3}\/100) * ({Height:3}\/100))","rounding":"2"}]);} } );jQuery(document).bind('gform_post_conditional_logic', function(event, formId, fields, isInit){} );</script>
<script type="text/javascript"> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [8, 1]) } ); </script>
<?php endif; ?>

<?php wp_footer(); ?>


</body>
</html>