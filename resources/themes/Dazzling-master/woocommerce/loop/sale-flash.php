<?php
/**
 * Product loop sale flash
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $post, $product;

?>
<?php if ( $product->is_on_sale() ) : ?>
	<?php $percentage = "You save ".round( ( ( $product->regular_price - $product->sale_price ) / $product->regular_price ) * 100 )."%"; 

	global $current_user;

    		$user_roles = $current_user->roles;
    		$user_role = array_shift($user_roles);

		
		if($user_role=="wholesale_customer"){
			
			echo apply_filters( 'woocommerce_sale_flash', '<label class="onsale" style="display: none !important; ">' . __( $percentage, 'woocommerce' ) . '</label>', $post, $product );
			
 		}
 		else{
 			$product_cat=wp_get_post_terms( $product->id, 'product_cat' );
 			$flag='';
 			foreach ($product_cat as $cat) {
 				if( get_field('special') ){
 					$flag='style="background-color: #ca2129;"';
 				}
 			}
 			echo apply_filters( 'woocommerce_sale_flash', '<label class="onsale" '.$flag.'>' . __( $percentage, 'woocommerce' ) . '</label>', $post, $product );

 		}	
 	?>

	<?php if( get_field('special') && $user_role!="wholesale_customer" ){?>

 	<label style="position: absolute;right: 3%;background-color: #c82128;color: white;border-radius: 50%;width: 60px;text-align: center;line-height: 20px;font-size: 1.5rem;padding: 10px;top: 10%;">Save <?php echo round( ( ( $product->regular_price - $product->sale_price ) / $product->regular_price ) * 100 )."%"; ?></label>
	<?php } ?>
<?php endif; ?>
