<?php
/**
 * Single Product title
 *
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>


<h1 itemprop="name" class="product_title entry-title">
<?php 
	the_title();
	global $current_user;

    $user_roles = $current_user->roles;
    $user_role = array_shift($user_roles);
	if($user_role=="wholesale_customer"){ 
		echo " ".get_post_meta( get_the_ID(), 'pharmacies_slug', true );
	} 
?>
</h1>