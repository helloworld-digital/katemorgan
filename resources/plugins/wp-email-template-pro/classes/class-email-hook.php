<?php
/**
 * WP Email Template Hook Filter
 *
 * Table Of Contents
 *
 * woo_email_header_marker_start()
 * woo_email_header_marker_end()
 * woo_email_footer_marker_start()
 * woo_email_footer_marker_end()
 * preview_wp_email_template()
 * set_content_type()
 * change_wp_mail()
 * admin_head_scripts()
 * a3_wp_admin()
 * admin_sidebar_menu_css()
 * plugin_extra_links()
 * settings_plugin_links()
 */
class WP_Email_Template_Hook_Filter
{

	public static function check_apply_template_for_woocommerce_emails() {
		global $wp_email_template_general;

		if ( $wp_email_template_general['apply_template_all_emails'] != 'yes' ) {
			return false;
		}

		if ( isset( $wp_email_template_general['apply_for_woo_emails'] ) && $wp_email_template_general['apply_for_woo_emails'] == 'yes' ) {
			return true;
		}

		return false;
	}

	public static function check_exclude_subject_for_woocommerce_emails() {
		$a3_email_template_for_woocommerce = true;

		$email = new WC_Email();
		$current_subject_title = $email->get_subject();

		if ( trim( $current_subject_title ) != '' ) {

			global $wp_email_template_exclude_subject_data;
			$all_exclude_subject = $wp_email_template_exclude_subject_data->get_all_exclude_subjects();

			if ( is_array( $all_exclude_subject ) && count( $all_exclude_subject ) > 0 ) {
				foreach ( $all_exclude_subject as $subject_data ) {
					if ( trim( $subject_data->email_subject ) != '' && stristr( $current_subject_title, $subject_data->email_subject ) !== false ) {
						$a3_email_template_for_woocommerce = false;
						break;
					}
				}
			}
		}

		return $a3_email_template_for_woocommerce;
	}

	public static function woo_email_header_marker_start( $email_heading='' ) {
		global $wp_email_template_general;

		if ( self::check_apply_template_for_woocommerce_emails() ) {
			ob_start();
			echo '<!--WOO_EMAIL_TEMPLATE_HEADER_START-->';
		}
	}

	public static function woo_email_header_marker_end( $email_heading='' ) {
		global $wp_email_template_general;

		if ( self::check_apply_template_for_woocommerce_emails() ) {
			echo '<!--WOO_EMAIL_TEMPLATE_HEADER_END-->';
			ob_get_clean();
			$header = WP_Email_Template_Functions::email_header($email_heading);

			if (isset($_REQUEST['preview_woocommerce_mail']) && $_REQUEST['preview_woocommerce_mail'] == 'true') {
				$template_notice = WP_Email_Template_Functions::apply_email_template_notice( __('Attention! You have selected to apply your WP Email Template to all WooCommerce Emails. Go to Settings in your WordPress admin sidebar > Email Template to customize this template or to reactivate the WooCommerce Email Template.', 'wp_email_template') );
				$header = str_replace('<!--EMAIL_TEMPLATE_NOTICE-->', $template_notice, $header);
			}


			echo $header;
		}
	}

	public static function woo_email_footer_marker_start() {
		global $wp_email_template_general;

		if ( self::check_apply_template_for_woocommerce_emails() ) {
			ob_start();
			echo '<!--WOO_EMAIL_TEMPLATE_FOOTER_START-->';
		}
	}

	public static function woo_email_footer_marker_end() {
		global $wp_email_template_general;

		if ( self::check_apply_template_for_woocommerce_emails() ) {
			echo '<!--WOO_EMAIL_TEMPLATE_FOOTER_END-->';
			ob_get_clean();
			echo WP_Email_Template_Functions::email_footer();
		}
		echo '<!--NO_USE_EMAIL_TEMPLATE-->';
	}

	public static function style_inline_h1_tag( $styles ) {
		global $wp_email_template_fonts_face, $wp_email_template_style_body;

		if ( self::check_apply_template_for_woocommerce_emails() ) {

			$styles = array();
			$h1_font     = str_replace( array( 'font:', 'font-family:' ), '', $wp_email_template_fonts_face->generate_font_css( $wp_email_template_style_body['h1_font'] ) );
			$styles['font'] = trim( $h1_font );

		}

		return $styles;
	}

	public static function style_inline_h2_tag( $styles ) {
		global $wp_email_template_fonts_face, $wp_email_template_style_body;

		if ( self::check_apply_template_for_woocommerce_emails() ) {

			$styles = array();
			$h2_font     = str_replace( array( 'font:', 'font-family:' ), '', $wp_email_template_fonts_face->generate_font_css( $wp_email_template_style_body['h2_font'] ) );
			$styles['font'] = trim( $h2_font );

		}

		return $styles;
	}

	public static function style_inline_h3_tag( $styles ) {
		global $wp_email_template_fonts_face, $wp_email_template_style_body;

		if ( self::check_apply_template_for_woocommerce_emails() ) {

			$styles = array();
			$h3_font     = str_replace( array( 'font:', 'font-family:' ), '', $wp_email_template_fonts_face->generate_font_css( $wp_email_template_style_body['h3_font'] ) );
			$styles['font'] = trim( $h3_font );

		}

		return $styles;
	}

	public static function remove_style_inline_woocommerce_tag( $styles ) {
		global $wp_email_template_general;

		if ( self::check_apply_template_for_woocommerce_emails() ) {
			$styles = array();
		}

		return $styles;
	}

	public static function preview_wp_email_template() {
		check_ajax_referer( 'preview_wp_email_template', 'security' );

		$email_heading = __('Email preview', 'wp_email_template');

		echo WP_Email_Template_Hook_Filter::preview_wp_email_content( $email_heading );

		die();
	}

	public static function preview_wp_email_content( $email_heading ) {

		$message = '<h2>'.__('WordPress Email sit amet', 'wp_email_template').'</h2>';

		$message.= wpautop(__('Ut ut est qui euismod parum. Dolor veniam tation nihil assum mazim. Possim fiant habent decima et claritatem. Erat me usus gothica laoreet consequat. Clari facer litterarum aliquam insitam dolor.

Gothica minim lectores demonstraverunt ut soluta. Sequitur quam exerci veniam aliquip litterarum. Lius videntur nisl facilisis claritatem nunc. Praesent in iusto me tincidunt iusto. Dolore lectores sed putamus exerci est. ', 'wp_email_template') );

		return WP_Email_Template_Functions::email_content($email_heading, $message, true );

	}

	public static function set_content_type( $content_type='' ) {
		global $wp_email_template_general;

		if ( $wp_email_template_general['apply_template_all_emails'] != 'yes' ) {
			return $content_type;
		}

		if ( stristr( $content_type, 'multipart') !== false ) {
			$content_type = 'multipart/alternative';
		} else {
			$content_type = 'text/html';
		}
		return $content_type;
	}

	public static function check_exclude_subject_for_apply_template( $email_data=array() ) {
		global $wp_email_template_general;

		if ( $wp_email_template_general['apply_template_all_emails'] != 'yes' ) {
			return $email_data;
		}

		global $wp_email_template_exclude_subject_data;
		$all_exclude_subject = $wp_email_template_exclude_subject_data->get_all_exclude_subjects();

		if ( isset( $email_data['subject'] ) && trim( $email_data['subject'] ) != '' ) {
			$email_subject = $email_data['subject'] ;

			$exclude_this_subject = false;
			if ( is_array( $all_exclude_subject ) && count( $all_exclude_subject ) > 0 ) {
				foreach ( $all_exclude_subject as $subject_data ) {
					if ( trim( $subject_data->email_subject ) != '' && stristr( $email_subject, $subject_data->email_subject ) !== false ) {
						$exclude_this_subject = true;
						break;
					}
				}
			}

			if ( $exclude_this_subject ) {

				if ( isset( $email_data['message'] ) ) {
					$message = $email_data['message'];
					if ( strip_tags( $message ) == $message ) {
						$message = nl2br( $message );
					}
					$email_data['message'] = $message . '<!--NO_USE_EMAIL_TEMPLATE-->';
				}
				if ( isset( $email_data['html'] ) ) {
					$message = $email_data['html'];
					if ( strip_tags( $message ) == $message ) {
						$message = nl2br( $message );
					}
					$email_data['html'] = $message . '<!--NO_USE_EMAIL_TEMPLATE-->';
				}
			}
		}

		return $email_data;
	}

	public static function change_wp_mail( $email_data=array() ) {
		$email_heading = $email_data['subject'] ;
		if ( isset( $email_data['message'] ) && stristr( $email_data['message'], '<!--NO_USE_EMAIL_TEMPLATE-->' ) === false ) {
			$email_data['message'] = WP_Email_Template_Functions::email_content($email_heading, $email_data['message']);
		} elseif ( isset( $email_data['html'] ) && stristr( $email_data['html'], '<!--NO_USE_EMAIL_TEMPLATE-->' ) === false ) {
			$email_data['html'] = WP_Email_Template_Functions::email_content($email_heading, $email_data['html']);
		}

		return $email_data;
	}

	public static function disable_formidable_encode_subject_title( $enable_encode = 1, $subject = '' ) {
		$enable_encode = 0;

		return $enable_encode;
	}

	public static function a3_wp_admin() {
		wp_enqueue_style( 'a3rev-wp-admin-style', WP_EMAIL_TEMPLATE_CSS_URL . '/a3_wp_admin.css' );
	}

	public static function admin_sidebar_menu_css() {
		wp_enqueue_style( 'a3rev-wp-et-admin-sidebar-menu-style', WP_EMAIL_TEMPLATE_CSS_URL . '/admin_sidebar_menu.css' );
	}

	public static function plugin_extension_box( $boxes = array() ) {
		$first_box = '<a href="https://a3rev.com/forums/forum/wordpress-plugins/wp-email-template/" target="_blank" alt="'.__('Go to Support Forum', 'wp_email_template').'"><img src="'.WP_EMAIL_TEMPLATE_IMAGES_URL.'/go-to-support-forum.png" /></a>';
		$boxes[] = array(
			'content' => $first_box,
			'css' => 'border: none; padding: 0; background: none;'
		);

		$second_box = '<a href="http://docs.a3rev.com/user-guides/plugins-extensions/wordpress/wp-email-template/" target="_blank" alt="'.__('View Plugin Docs', 'wp_email_template').'"><img src="'.WP_EMAIL_TEMPLATE_IMAGES_URL.'/view-plugin-docs.png" /></a>';

		$boxes[] = array(
			'content' => $second_box,
			'css' => 'border: none; padding: 0; background: none;'
		);

		$third_box = '<div style="margin-bottom: 5px;">' . __('Connect with us via','wp_email_template') . '</div>';
		$third_box .= '<a href="https://www.facebook.com/a3rev" target="_blank" alt="'.__('a3rev Facebook', 'wp_email_template').'" style="margin-right: 5px;"><img src="'.WP_EMAIL_TEMPLATE_IMAGES_URL.'/follow-facebook.png" /></a> ';
		$third_box .= '<a href="https://twitter.com/a3rev" target="_blank" alt="'.__('a3rev Twitter', 'wp_email_template').'"><img src="'.WP_EMAIL_TEMPLATE_IMAGES_URL.'/follow-twitter.png" /></a>';

		$boxes[] = array(
			'content' => $third_box,
			'css' => 'border-color: #3a5795;'
		);

		$four_box = '<a href="http://a3rev.com/product-category/woocommerce/?display=products" target="_blank" alt="'.__('WooCommerce Plugins', 'wp_email_template').'"><img src="'.WP_EMAIL_TEMPLATE_IMAGES_URL.'/woocommerce-plugins.png" /></a>';

		$boxes[] = array(
			'content' => $four_box,
			'css' => 'border: none; padding: 0; background: none;'
		);

		return $boxes;
	}

	public static function plugin_extra_links($links, $plugin_name) {
		if ( $plugin_name != WP_EMAIL_TEMPLATE_NAME) {
			return $links;
		}
		$links[] = '<a href="http://docs.a3rev.com/user-guides/wordpress/wp-email-template/" target="_blank">'.__('Documentation', 'wp_email_template').'</a>';
		$links[] = '<a href="https://a3rev.com/forums/forum/wordpress-plugins/wp-email-template/" target="_blank">'.__('Support', 'wp_email_template').'</a>';
		return $links;
	}

	public static function settings_plugin_links($actions) {
		$actions = array_merge( array( 'settings' => '<a href="admin.php?page=wp_email_template">' . __( 'Settings', 'wp_email_template' ) . '</a>' ), $actions );

		return $actions;
	}
}
?>