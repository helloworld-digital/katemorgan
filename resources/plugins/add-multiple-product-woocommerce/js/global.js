
jQuery(document).ready( function($) {
	
	jQuery(".qty ").bind('mouseleave',function() {	

		// Get values from input box
		var new_qty = $(this).val();
		var step = jQuery(this).attr( 'step' );
		var max = jQuery(this).attr( 'max' );
		var min = jQuery(this).attr( 'min' );
		
		// Adjust default values if values are blank
		if ( min == '' ) 
			min = 1;
		
		if ( step == '' ) 
			step = 1;
		
		// Calculate remainder
		var rem = ( new_qty - min ) % step;

		// Max Value Validation
		if ( +new_qty > +max && max != '' ) {
			new_qty = max;
		
		// Min Value Validation
		} else if ( +new_qty < +min && min != '' ) {
			new_qty = min;
		
		// Step Value Value Validation
		} else if ( rem != 0 && !isNaN( rem ) ) {
			new_qty = +new_qty + (+step - +rem);
			console.log( rem );
		}
		
		jQuery(this).val( new_qty );
		jQuery(this).parent.siblings( ".button" ).attr( "data-quantity", new_qty );
		
	});
	
	
	jQuery('.checkall').click(function() {
		if(jQuery(this).is(":checked")) {
			var len = document.getElementsByClassName('check').length;
			var i;
			for(i=0;i<(len);i++) {
				document.getElementsByClassName('check')[i].checked = true;
			}
		} else {
			var len = document.getElementsByClassName('check').length;
			var i;
			for(i=0;i<(len);i++) {
				document.getElementsByClassName('check')[i].checked = false;
			}
		}
	});
		
	jQuery('.btn-cartall').click(function() {
		var error = false;
		var error1 = true;
		var qty = [];
		var allVals = [];
		
		jQuery('.check').each(function() {
			if(jQuery(this).is(':checked')) {
				var tval = jQuery(this).val();
				allVals.push(tval);
				var qty1 = jQuery(".post-"+tval+" a.product_type_simple").attr("data-quantity");
				qty.push(qty1);
				
				error1 = false;
			}
		});
		if(error1 == true) {
			alert("No checkbox selected !");
		} 		
		if(error == false && error1 == false) {
			var homeurl = document.getElementById('home_url').value;
		
			for (var i = 0; i < allVals.length; i++ ) {
			document.getElementById("load").style.display = "block";
			jQuery('.woocommerce').prepend('<div class="overlay">&nbsp;</div>');
            
			jQuery.ajax({
					type: "POST",
					async: false,
					
					url: homeurl+"/wp-admin/admin-ajax.php",
					data: { 'action': "woocommerce_add_to_cart", 'product_id': allVals[i],'quantity': qty[i] }
					})
           //alert(allVals[i]);
	    document.getElementById("load").style.display = "none";
	    jQuery('.overlay').remove();
            
			}
		  document.getElementById('all-added-success').innerHTML = '<div class="woocommerce-message"><a class="button wc-forward" href="'+homeurl+'/cart/">View Cart</a>Items was successfully added to your cart.</div>';
			
		
		}

		
	});
	
});
