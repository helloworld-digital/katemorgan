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

 			echo apply_filters( 'woocommerce_sale_flash', '<label class="onsale">' . __( $percentage, 'woocommerce' ) . '</label>', $post, $product );
 		}	
 	?>

<?php endif; ?>
