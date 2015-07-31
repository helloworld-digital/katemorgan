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
	<?php $percentage = "You save ".round( ( ( $product->regular_price - $product->sale_price ) / $product->regular_price ) * 100 )."%"; ?>
	<?php echo apply_filters( 'woocommerce_sale_flash', '<label class="onsale">' . __( $percentage, 'woocommerce' ) . '</label>', $post, $product ); ?>

<?php endif; ?>
