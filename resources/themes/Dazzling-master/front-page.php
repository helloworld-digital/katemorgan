<?php

    if ( get_option( 'show_on_front' ) == 'posts' ) {
        get_template_part( 'index' );
    } elseif ( 'page' == get_option( 'show_on_front' ) ) {

get_header(); ?>

<!--Homepage Slider-->        
<?php if( have_rows('homepage_slider') ):?>
  <section class="block">
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">

      <?php $x=1; while ( have_rows('homepage_slider') ) : the_row(); ?>
        <?php if ($x==1) 
        {
          $active='active';
        } else
        { 
          $active=''; 
        } ?>
        <div class="<?php echo $active; ?> item" style='background-image: url(<?php the_sub_field('slide_image'); ?>); background-position: top center;'>
	<div class="container" style="width: 67%; max-width: 1170px;">
	<div class="row">
	<div class="col-md-6">
        <p style="height: 350px;display: table-cell;vertical-align: middle;font-size: 40px;text-align: center;color: white;line-height: 50px;"><?php the_sub_field('slide_text'); $x++; ?></p>
	</div>
<div class="col-md-6" style="text-align: right;">
<?php if (get_sub_field('offer_image')){ ?>
<?php if (get_sub_field('offer_link')){ ?>
	<a href="<?php the_sub_field('offer_link');?>">
<?php } ?>
<img style="margin-top: 30px;box-shadow: 6px 6px 17px #888888;" src="<?php the_sub_field('offer_image'); ?>" />

<?php if (get_sub_field('offer_link')){ ?>
	</a>
<?php } ?>

<?php } ?>
</div>
	</div>
	</div>
        </div>
      <?php endwhile; ?>
      </div>
      <a class="carousel-control left" href="#myCarousel" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="fa fa-chevron-right"></i></a>
    </div>
  </section>
<?php endif; ?>


<!--Category Range Slider-->         
<div class="range-slider">
  <div class="site-content container">
  <h2>The Kate Morgan Range</h2>
 <?php
  $taxonomy     = 'product_cat';
  $orderby      = 'name';  
  $show_count   = 0;      // 1 for yes, 0 for no
  $pad_counts   = 0;      // 1 for yes, 0 for no
  $hierarchical = 1;      // 1 for yes, 0 for no  
  $title        = '';  
  $empty        = 0;
$args = array(
  'taxonomy'     => $taxonomy,
  'orderby'      => $orderby,
  'show_count'   => $show_count,
  'pad_counts'   => $pad_counts,
  'hierarchical' => $hierarchical,
  'title_li'     => $title,
  'hide_empty'   => $empty
);
?>
    <div class="range slick-slider">
      <?php $all_categories = get_categories( $args );
//print_r($all_categories);
foreach ($all_categories as $cat) {
    //print_r($cat);
    if($cat->category_parent == 0) {
        $category_id = $cat->term_id;
        echo '<div>';

        echo '<label>';
        echo '<a href="shop/#products_categories_row_'.$cat->term_id.'">'. $cat->name .'</a>';
        echo '</label>';
        $lowest_price = wpq_get_min_price_per_product_cat( $category_id );

        echo '<label class="onsale">From just $'.money_format('%i', $lowest_price).' a meal</label>';

        $thumbnail_id = get_woocommerce_term_meta( $cat->term_id, 'thumbnail_id', true );
        $image = wp_get_attachment_url( $thumbnail_id );
        if ( $image ) {
          echo '<br/><div class="wrapper"><img src="' . $image . '" alt="" /></div>';
        }

        echo "<div class='moreinfo'><a href='shop/#products_categories_row_".$cat->term_id."'><button>Shop Now <i class='fa fa-shopping-cart'></i></button></a></div>";
        echo '</div>';  
      }     
}
?>
     
    </div>
  </div>
</div>

<!--Join the program-->
<?php if( have_rows('join_the_program') ):?>
  <div class="site-content container program">
    <h2>Join The Program</h2>

    <?php $x =1 ; while ( have_rows('join_the_program') ) : the_row();?>
      <div id="program-<?php echo $x;?>" class="col-sm-4 col-md-4">
        <a href="<?php the_sub_field('link'); ?>"><img src="<?php echo get_home_url();?>/resources/themes/Dazzling-master/images/program<?php echo $x;?>.png"/></a>
        <h3><?php the_sub_field('title'); ?></h3>
        <p><?php the_sub_field('description'); ?></p>
        <a id="button" href="<?php the_sub_field('link'); ?>">Learn more</a>
        
        
        

      </div>
    <?php $x++; endwhile; ?>

  </div>
<?php endif; ?>

<!--Client Slider-->
<?php if( have_rows('client_slider') ): ?>
<div class="client-slider">
  <div class="site-content container">
  <h2>What Our Members Say</h2>
    <div class="testimonial slick-slider">
    <?php while ( have_rows('client_slider') ) : the_row();?>

        <div>
          <a href="<?php echo get_home_url();?>/success-stories/" style="color: white;">
          <img src="<?php the_sub_field('client_image'); ?>"/>
          <h4><?php the_sub_field('client_title'); ?></h4>
          <p><?php echo '"'.substr(get_sub_field('client_description'),0,90).'..."'; ?></p>
          </a>
        </div>
    <?php endwhile; ?>
    </div>
  </div>
</div>
<?php endif;?>
     
<div id="content" class="site-content container" style="display: none;">

	

<?php
	get_footer();
}
?>