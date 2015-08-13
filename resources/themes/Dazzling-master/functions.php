<?php
/**
 * Dazzling functions and definitions
 *
 * @package dazzling
 */

/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 730; /* pixels */
}

/**
 * Set the content width for full width pages with no sidebar.
 */
function dazzling_content_width() {
  if ( is_page_template( 'page-fullwidth.php' ) || is_page_template( 'front-page.php' ) ) {
    global $content_width;
    $content_width = 1110; /* pixels */
  }
}
//add_action( 'template_redirect', 'dazzling_content_width' );
if ( ! function_exists( 'dazzling_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function dazzling_setup() {

  /*
   * Make theme available for translation.
   * Translations can be filed in the /languages/ directory.
   * If you're building a theme based on Dazzling, use a find and replace
   * to change 'dazzling' to the name of your theme in all the template files
   */
  load_theme_textdomain( 'dazzling', get_template_directory() . '/languages' );

  // Add default posts and comments RSS feed links to head.
  add_theme_support( 'automatic-feed-links' );

  /*
   * Enable support for Post Thumbnails on posts and pages.
   *
   * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
   */
  add_theme_support( 'post-thumbnails' );

  add_image_size( 'dazzling-featured', 730, 410, true );
  add_image_size( 'tab-small', 60, 60 , true); // Small Thumbnail

  // This theme uses wp_nav_menu() in one location.
  register_nav_menus( array(
    'primary'      => __( 'Primary Menu', 'dazzling' ),
    'footer-links' => __( 'Footer Links', 'dazzling' ),
     'secondary' => __( 'Secondary Menu', 'dazzling' ),//z secondary menu in footer
  ) );

  // Enable support for Post Formats.
  add_theme_support( 'post-formats', array( 'aside', 'image', 'video', 'quote', 'link' ) );

  // Setup the WordPress core custom background feature.
  add_theme_support( 'custom-background', apply_filters( 'dazzling_custom_background_args', array(
  	'default-color' => 'ffffff',
  	'default-image' => '',
  ) ) );

  /*
   * Let WordPress manage the document title.
   * By adding theme support, we declare that this theme does not use a
   * hard-coded <title> tag in the document head, and expect WordPress to
   * provide it for us.
   */
  add_theme_support( 'title-tag' );
}
endif; // dazzling_setup
add_action( 'after_setup_theme', 'dazzling_setup' );

/**
 * Register widgetized area and update sidebar with default widgets.
 */
function dazzling_widgets_init() {
  register_sidebar( array(
    'name'          => __( 'Sidebar', 'dazzling' ),
    'id'            => 'sidebar-1',
    'before_widget' => '<aside id="%1$s" class="widget %2$s">',
    'after_widget'  => '</aside>',
    'before_title'  => '<h3 class="widget-title">',
    'after_title'   => '</h3>',
  ) );
  register_sidebar(array(
    'id'            => 'home-widget-1',
    'name'          => __( 'Homepage Widget 1', 'dazzling' ),
    'description'   => __( 'Displays on the Home Page', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'home-widget-2',
    'name'          =>  __( 'Homepage Widget 2', 'dazzling' ),
    'description'   => __( 'Displays on the Home Page', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'home-widget-3',
    'name'          =>  __( 'Homepage Widget 3', 'dazzling' ),
    'description'   =>  __( 'Displays on the Home Page', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-1',
    'name'          =>  __( 'Footer Widget 1', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-2',
    'name'          =>  __( 'Footer Widget 2', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-3',
    'name'          =>  __( 'Footer Widget 3', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));


  register_sidebar(array(
    'id'            => 'footer-widget-4',
    'name'          =>  __( 'Footer Widget 4', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));


  register_widget( 'dazzling_popular_posts_widget' );
}
add_action( 'widgets_init', 'dazzling_widgets_init' );

include(get_template_directory() . "/inc/popular-posts-widget.php");


/**
 * Enqueue scripts and styles.
 */
function dazzling_scripts() {

  wp_enqueue_style( 'dazzling-bootstrap', get_template_directory_uri() . '/inc/css/bootstrap.min.css' );

  wp_enqueue_style( 'dazzling-icons', get_template_directory_uri().'/inc/css/font-awesome.min.css' );

  if( ( is_home() || is_front_page() ) && of_get_option('dazzling_slider_checkbox') == 1 ) {
  	wp_enqueue_style( 'flexslider-css', get_template_directory_uri().'/inc/css/flexslider.css' );
  }

  if ( class_exists( 'jigoshop' ) ) { // Jigoshop specific styles loaded only when plugin is installed
    wp_enqueue_style( 'jigoshop-css', get_template_directory_uri().'/inc/css/jigoshop.css' );
  }

  wp_enqueue_style( 'dazzling-style', get_stylesheet_uri() );

  wp_enqueue_script('dazzling-bootstrapjs', get_template_directory_uri().'/inc/js/bootstrap.min.js', array('jquery') );

  if( ( is_home() || is_front_page() ) && of_get_option('dazzling_slider_checkbox') == 1 ) {
  	wp_enqueue_script( 'flexslider', get_template_directory_uri() . '/inc/js/flexslider.min.js', array('jquery'), '2.4.0', true );
  }

  wp_enqueue_script( 'dazzling-main', get_template_directory_uri() . '/inc/js/main.js', array('jquery') );

  if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
  	wp_enqueue_script( 'comment-reply' );
  }
}
add_action( 'wp_enqueue_scripts', 'dazzling_scripts' );

/**
 * Add HTML5 shiv and Respond.js for IE8 support of HTML5 elements and media queries
 */
function dazzling_ie_support_header() {
  echo '<!--[if lt IE 9]>'. "\n";
  echo '<script src="' . esc_url( get_template_directory_uri() . '/inc/js/html5shiv.min.js' ) . '"></script>'. "\n";
  echo '<script src="' . esc_url( get_template_directory_uri() . '/inc/js/respond.min.js' ) . '"></script>'. "\n";
  echo '<![endif]-->'. "\n";
}
add_action( 'wp_head', 'dazzling_ie_support_header', 11 );

/*
 * Loads the Options Panel
 *
 * If you're loading from a child theme use stylesheet_directory
 * instead of template_directory
 */
define( 'OPTIONS_FRAMEWORK_DIRECTORY', get_template_directory_uri() . '/inc/admin/' );
require_once dirname( __FILE__ ) . '/inc/admin/options-framework.php';
// Loads options.php from child or parent theme
$optionsfile = locate_template( 'options.php' );
load_template( $optionsfile );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

/**
 * Load custom nav walker
 */
require get_template_directory() . '/inc/navwalker.php';

if ( class_exists( 'woocommerce' ) ) {
/**
 * WooCommerce related functions
 */
require get_template_directory() . '/inc/woo-setup.php';
}

if ( class_exists( 'jigoshop' ) ) {
/**
 * Jigoshop related functions
 */
require get_template_directory() . '/inc/jigoshop-setup.php';
}

function the_breadcrumb () {
     
    // Settings
    $separator  = '&#47;';
    $id         = 'breadcrumbs';
    $class      = 'breadcrumbs';
    $home_title = 'Home';
     
    // Get the query & post information
    global $post,$wp_query;
    $category = get_the_category();
     
    // Build the breadcrums
    echo '<ul id="' . $id . '" class="' . $class . '">';
     
    // Do not display on the homepage
    if ( !is_front_page() ) {
         
        // Home page
        echo '<li class="item-home"><a class="bread-link bread-home" href="' . get_home_url() . '" title="' . $home_title . '">' . $home_title . '</a></li>';
        echo '<li class="separator separator-home"> ' . $separator . ' </li>';
         
        if ( is_single() ) {
             
            // Single post (Only display the first category)
            echo '<li class="item-cat item-cat-' . $category[0]->term_id . ' item-cat-' . $category[0]->category_nicename . '"><a class="bread-cat bread-cat-' . $category[0]->term_id . ' bread-cat-' . $category[0]->category_nicename . '" href="' . get_category_link($category[0]->term_id ) . '" title="' . $category[0]->cat_name . '">' . $category[0]->cat_name . '</a></li>';
            echo '<li class="separator separator-' . $category[0]->term_id . '"> ' . $separator . ' </li>';
            echo '<li class="item-current item-' . $post->ID . '"><strong class="bread-current bread-' . $post->ID . '" title="' . get_the_title() . '">' . get_the_title() . '</strong></li>';
             
        } else if ( is_category() ) {
             
            // Category page
            echo '<li class="item-current item-cat-' . $category[0]->term_id . ' item-cat-' . $category[0]->category_nicename . '"><strong class="bread-current bread-cat-' . $category[0]->term_id . ' bread-cat-' . $category[0]->category_nicename . '">' . $category[0]->cat_name . '</strong></li>';
             
        } else if ( is_page() ) {
             
            // Standard page
            if( $post->post_parent ){
                 
                // If child page, get parents 
                $anc = get_post_ancestors( $post->ID );
                 
                // Get parents in the right order
                $anc = array_reverse($anc);
                 
                // Parent page loop
                foreach ( $anc as $ancestor ) {
                    $parents .= '<li class="item-parent item-parent-' . $ancestor . '"><a class="bread-parent bread-parent-' . $ancestor . '" href="' . get_permalink($ancestor) . '" title="' . get_the_title($ancestor) . '">' . get_the_title($ancestor) . '</a></li>';
                    $parents .= '<li class="separator separator-' . $ancestor . '"> ' . $separator . ' </li>';
                }
                 
                // Display parent pages
                echo $parents;
                 
                // Current page
                echo '<li class="item-current item-' . $post->ID . '"><strong title="' . get_the_title() . '"> ' . get_the_title() . '</strong></li>';
                 
            } else {
                 
                // Just display current page if not parents
                echo '<li class="item-current item-' . $post->ID . '"><strong class="bread-current bread-' . $post->ID . '"> ' . get_the_title() . '</strong></li>';
                 
            }
             
        } else if ( is_tag() ) {
             
            // Tag page
             
            // Get tag information
            $term_id = get_query_var('tag_id');
            $taxonomy = 'post_tag';
            $args ='include=' . $term_id;
            $terms = get_terms( $taxonomy, $args );
             
            // Display the tag name
            echo '<li class="item-current item-tag-' . $terms[0]->term_id . ' item-tag-' . $terms[0]->slug . '"><strong class="bread-current bread-tag-' . $terms[0]->term_id . ' bread-tag-' . $terms[0]->slug . '">' . $terms[0]->name . '</strong></li>';
         
        } elseif ( is_day() ) {
             
            // Day archive
             
            // Year link
            echo '<li class="item-year item-year-' . get_the_time('Y') . '"><a class="bread-year bread-year-' . get_the_time('Y') . '" href="' . get_year_link( get_the_time('Y') ) . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</a></li>';
            echo '<li class="separator separator-' . get_the_time('Y') . '"> ' . $separator . ' </li>';
             
            // Month link
            echo '<li class="item-month item-month-' . get_the_time('m') . '"><a class="bread-month bread-month-' . get_the_time('m') . '" href="' . get_month_link( get_the_time('Y'), get_the_time('m') ) . '" title="' . get_the_time('M') . '">' . get_the_time('M') . ' Archives</a></li>';
            echo '<li class="separator separator-' . get_the_time('m') . '"> ' . $separator . ' </li>';
             
            // Day display
            echo '<li class="item-current item-' . get_the_time('j') . '"><strong class="bread-current bread-' . get_the_time('j') . '"> ' . get_the_time('jS') . ' ' . get_the_time('M') . ' Archives</strong></li>';
             
        } else if ( is_month() ) {
             
            // Month Archive
             
            // Year link
            echo '<li class="item-year item-year-' . get_the_time('Y') . '"><a class="bread-year bread-year-' . get_the_time('Y') . '" href="' . get_year_link( get_the_time('Y') ) . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</a></li>';
            echo '<li class="separator separator-' . get_the_time('Y') . '"> ' . $separator . ' </li>';
             
            // Month display
            echo '<li class="item-month item-month-' . get_the_time('m') . '"><strong class="bread-month bread-month-' . get_the_time('m') . '" title="' . get_the_time('M') . '">' . get_the_time('M') . ' Archives</strong></li>';
             
        } else if ( is_year() ) {
             
            // Display year archive
            echo '<li class="item-current item-current-' . get_the_time('Y') . '"><strong class="bread-current bread-current-' . get_the_time('Y') . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</strong></li>';
             
        } else if ( is_author() ) {
             
            // Auhor archive
             
            // Get the author information
            global $author;
            $userdata = get_userdata( $author );
             
            // Display author name
            echo '<li class="item-current item-current-' . $userdata->user_nicename . '"><strong class="bread-current bread-current-' . $userdata->user_nicename . '" title="' . $userdata->display_name . '">' . 'Author: ' . $userdata->display_name . '</strong></li>';
         
        } else if ( get_query_var('paged') ) {
             
            // Paginated archives
            echo '<li class="item-current item-current-' . get_query_var('paged') . '"><strong class="bread-current bread-current-' . get_query_var('paged') . '" title="Page ' . get_query_var('paged') . '">'.__('Page') . ' ' . get_query_var('paged') . '</strong></li>';
             
        } else if ( is_search() ) {
         
            // Search results page
            echo '<li class="item-current item-current-' . get_search_query() . '"><strong class="bread-current bread-current-' . get_search_query() . '" title="Search results for: ' . get_search_query() . '">Search results for: ' . get_search_query() . '</strong></li>';
         
        } elseif ( is_404() ) {
             
            // 404 page
            echo '<li>' . 'Error 404' . '</li>';
        }
         
    }
     
    echo '</ul>';
     
}
//woocommerce get lowest price in category
function wpq_get_min_price_per_product_cat( $term_id ) {

  global $wpdb;

  $sql = "

    SELECT  MIN( meta_value+0 ) as minprice

    FROM {$wpdb->posts} 

    INNER JOIN {$wpdb->term_relationships} ON ({$wpdb->posts}.ID = {$wpdb->term_relationships}.object_id)

    INNER JOIN {$wpdb->postmeta} ON ({$wpdb->posts}.ID = {$wpdb->postmeta}.post_id) 

    WHERE  

      ( {$wpdb->term_relationships}.term_taxonomy_id IN (%d) ) 

    AND {$wpdb->posts}.post_type = 'product' 

    AND {$wpdb->posts}.post_status = 'publish' 

    AND {$wpdb->postmeta}.meta_key = '_price'

  ";

  return $wpdb->get_var( $wpdb->prepare( $sql, $term_id ) );

}

/*
 * wc_remove_related_products
 * 
 * Clear the query arguments for related products so none show.
 * Add this code to your theme functions.php file.  
 */
function wc_remove_related_products( $args ) {
  return array();
}
add_filter('woocommerce_related_products_args','wc_remove_related_products', 10); 

function filter_plugin_updates( $value ) {

	if($value->response['woocommerce-product-sort-and-display/wc-psad.php']){
    	unset( $value->response['woocommerce-product-sort-and-display/wc-psad.php'] );
	}
	
	
	if( $value->response['addon-so-widgets-bundle/addon-so-widgets-bundle.php'] ){
    	unset( $value->response['addon-so-widgets-bundle/addon-so-widgets-bundle.php'] );
	}	

    return $value;
}
add_filter( 'site_transient_update_plugins', 'filter_plugin_updates' );



// Gravity Forms Custom Addresses (Australia)
add_filter('gform_address_types', 'australian_address', 10, 2);
/**
 * Add Australia address format to Gravity form address field
 * @param  [type] $address_types [description]
 * @param  [type] $form_id       [description]
 * @return [type]                [description]
 */
function australian_address( $address_types, $form_id ) {
    $address_types['australia'] = array(
    'label'       =>   'Australia', //labels the dropdown
    'country'     =>   'Australia', //sets Australia as default country
    'zip_label'   =>   'Post Code', //what it says
    'state_label' =>   'State', //as above
    'states' => array( 
        '', 
        'Australian Capital Territory',
        'New South Wales',
        'Northern Territory',
        'Queensland',
        'South Australia',
        'Tasmania', 'Victoria',
        'Western Australia'
        )
    );
    return $address_types;
}

add_filter('wwp_filter_wholesale_price_title_text', 'override_wholesale_text', 10, 1);
 
function override_wholesale_text($wholesaletext) {
    return 'Pharmacies Price:';
}


function user_chart (){
  global $wpdb;
  $user_id = get_current_user_id();
  $key1 = 'initial_height';
  $key2 = 'initial_weight';
  $key3 = 'initial_waist';
  $key4 = 'initial_bmi';



  $single = true;
  $initial_height = get_user_meta( $user_id, $key1, $single ); 
  $initial_weight = get_user_meta( $user_id, $key2, $single ); 
  $initial_waist = get_user_meta( $user_id, $key3, $single ); 
  $initial_bmi = get_user_meta( $user_id, $key4, $single );
  $intial_date = date("Y-m-d", strtotime(get_userdata(get_current_user_id( ))->user_registered));


  $initial_object =(object) array(
    "date" =>  $intial_date,
    "weight" => $initial_weight,
    "waist" => $initial_waist,
    "BMI" => $initial_bmi
    );

  $myrows = $wpdb->get_results( "SELECT date, weight, waist, BMI FROM km_user_health_history WHERE user_ID='$user_id'" );
  array_unshift($myrows,$initial_object);

  usort($myrows, function($a, $b) {
    return $a->date- $b->date;
  });

  $date_array = array();
  $weight_array = array();
  $waist_array = array();
  $bmi_array = array();

  foreach ($myrows as $obj){
    array_push($date_array, $obj->date);
    array_push($weight_array, $obj->weight);
    array_push($waist_array, $obj->waist);
    array_push($bmi_array, $obj->BMI);
  }

 
  echo '<h2>History</h2>';
  echo '<div class="row">';

  echo '<div class="col-md-4" style="text-align: center">';
  echo '<h3>Body Measurement</h3>';
  echo '<div class="ct-chart-bmi ct-perfect-fourth"></div>';
  echo '</div>';

  echo '<div class="col-md-4" style="text-align: center">';
  echo '<h3>Weight</h3>';
  echo '<div class="ct-chart-weight ct-perfect-fourth"></div>';
  echo '</div>';

  echo '<div class="col-md-4" style="text-align: center">';
  echo '<h3>Waist</h3>';
  echo '<div class="ct-chart-waist ct-perfect-fourth"></div>';
  echo '</div>';

  echo '</div>';
  echo "<script type='text/javascript'>

  new Chartist.Line('.ct-chart-bmi', {
  labels:".json_encode($date_array).",
  series:[ ".str_replace('"','',json_encode($bmi_array))."]
}, {
  fullWidth: true
});

</script>";

echo "<script type='text/javascript'>

  new Chartist.Line('.ct-chart-weight', {
  labels:".json_encode($date_array).",
  series:[ ".str_replace('"','',json_encode($weight_array))."]
}, {
  fullWidth: true

});

</script>";

echo "<script type='text/javascript'>

  new Chartist.Line('.ct-chart-waist', {
  labels:".json_encode($date_array).",
  series:[ ".str_replace('"','',json_encode($waist_array))."]
}, {
  fullWidth: true
});

</script>";

echo'<table class="BMI_table">';
	echo '<thead><tr><td><h3>Date</h3></td><td><h3>BMI</h3></td><td><h3>Waist</h3></td><td><h3>Weight</h3></td></tr></thead>';
	foreach($myrows as $obj){
		echo '<tr>';
		echo '<td>'.$obj->date.'</td>';
		echo '<td>'.$obj->BMI.'</td>';
		echo '<td>'.$obj->waist.'</td>';
		echo '<td>'.$obj->weight.'</td>';

		echo '</tr>';
	}

	echo '</table>';

  };
 
add_shortcode( 'user_chart', 'user_chart' );

add_action('gform_after_submission_4', 'entry_into_db', 10, 2);
function entry_into_db($entry, $form) {
 
    // uncomment to see the entry object 
    // echo '<pre>';
    // var_dump($entry);
    // echo '</pre>';
 
   
  
 
    global $wpdb;

    $user_id = get_current_user_id();
    $key = 'initial_height';
    $input_height = get_user_meta( $user_id, $key, true ); 
    $input_height_in_m =  $input_height/100;
    $input_date = rgar( $entry, '2' );
    $input_weight = rgar( $entry, '3' );
    $input_waist = rgar( $entry, '4' );
    $input_bmi= round($input_weight / pow("$input_height_in_m",2),2);

    // add form data to custom database table
  $wpdb->insert(
      'km_user_health_history',
      array(
        'user_id' => $user_id,
        'date' => $input_date,
        'weight' => $input_weight,
        'waist' => $input_waist,
        'height' => $input_bmi,
        'BMI' => $input_bmi
      )
  );
 
}
remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
remove_action( 'wp_print_styles', 'print_emoji_styles' );

/*register_activation_hook( __FILE__, 'endo_create_custom_table' );

function endo_create_custom_table() {

  global $wpdb;

  $table_name = $wpdb->prefix . "user_health_history";

  $sql = "CREATE TABLE $table_name(
    id mediumint(9) NOT NULL AUTO_INCREMENT,
    user_id VARCHAR(60) NOT NULL,
    date datetime,
    weight VARCHAR(60) NOT NULL,
    waist VARCHAR(60) NOT NULL,
    height VARCHAR(60) NOT NULL,
    BMI VARCHAR(60) NOT NULL,
    UNIQUE KEY id(id)
    ) COLLATE utf8_general_ci;";

  require_once(ABSPATH . '/wp-admin/includes/upgrade.php');
  
  dbDelta($sql);

}*/

add_shortcode( 'pharmacies', 'pharmacies_check_shortcode' );

function pharmacies_check_shortcode( $atts, $content = null ) {

		
		global $current_user;

    		$user_roles = $current_user->roles;
    		$user_role = array_shift($user_roles);
	
		if($user_role=="wholesale_customer"){
			return $content;
		}
		else{
			return '';
		}

}

add_shortcode( 'customer', 'customer_check_shortcode' );

function customer_check_shortcode( $atts, $content = null ) {

		
		global $current_user;

    		$user_roles = $current_user->roles;
    		$user_role = array_shift($user_roles);
	
		if($user_role!="wholesale_customer"){
			return $content;
		}
		else{
			return '';
		}

}

add_action('after_setup_theme', 'remove_admin_bar');

function remove_admin_bar() {
if (!current_user_can('administrator') && !is_admin()) {
  show_admin_bar(false);
}
}