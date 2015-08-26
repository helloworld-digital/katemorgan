<?php
if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

$wp_email_template_general = get_option('wp_email_template_general');
$wp_email_template_exclude_emails = get_option('wp_email_template_exclude_emails', array() );
if ( isset( $wp_email_template_general['exclude_shortcode'] ) ) {
	$wp_email_template_exclude_emails['exclude_shortcode'] = $wp_email_template_general['exclude_shortcode'];
}
update_option('wp_email_template_exclude_emails', $wp_email_template_exclude_emails);

global $wp_email_template_exclude_subject_data;
$wp_email_template_exclude_subject_data->install_database();