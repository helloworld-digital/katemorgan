<?php
/**
 * Loop Add to Cart
 */
 
global $product; 
if( $product->get_price() === '' && $product->product_type != 'external' ) return;
?>

<?php if ( ! $product->is_in_stock() ) : ?>
		
	<a href="<?php echo get_permalink($product->id); ?>" class="button"><?php echo apply_filters('out_of_stock_add_to_cart_text', __('Read More', 'woocommerce')); ?></a>

<?php else : ?>
	
	<?php 
	
		switch ( $product->product_type ) {
			case "variable" :
				$link 	= get_permalink($product->id);
				$label 	= apply_filters('variable_add_to_cart_text', __('Select options', 'woocommerce'));
			break;
			case "grouped" :
				$link 	= get_permalink($product->id);
				$label 	= apply_filters('grouped_add_to_cart_text', __('View options', 'woocommerce'));
			break;
			case "external" :
				$link 	= get_permalink($product->id);
				$label 	= apply_filters('external_add_to_cart_text', __('Read More', 'woocommerce'));
			break;
			default :
				$link 	= esc_url( $product->add_to_cart_url() );
				$label 	= apply_filters('add_to_cart_text', __('Add to cart', 'woocommerce'));
			break;
		}
	
		
		if ( $product->product_type == 'simple' ) {
			print('<label id="Qty" style="margin-left: 11px;">Qty: </label>');
			woocommerce_quantity_input( array(
      'min_value' => apply_filters( 'woocommerce_quantity_input_min', 1, $product ),
      'max_value' => apply_filters( 'woocommerce_quantity_input_max', $product->backorders_allowed() ? '' : $product->get_stock_quantity(), $product )
    ) );
			
			printf('<div class="moreinfo"><a href="%s" rel="nofollow" data-product_id="%s" data-product_sku="%s" data-quantity="%s" class="button %s product_type_%s">%s <i class="fa fa-shopping-cart"></i></a></div>', esc_url( $product->add_to_cart_url() ),
		esc_attr( $product->id ),
		esc_attr( $product->get_sku() ),
		esc_attr( isset( $quantity ) ? $quantity : 1 ),
		$product->is_purchasable() && $product->is_in_stock() ? 'add_to_cart_button' : '',
		esc_attr( $product->product_type ),
		esc_html( $product->add_to_cart_text()));
		
		?>

			<?php
			
		} else {
			
			printf('<a href="%s" rel="nofollow" data-product_id="%s" class="button add_to_cart_button product_type_%s">%s</a>', $link, $product->id, $product->product_type, $label);
			
		}
	?>

<?php endif; ?>