<?php
/**
 * _s Theme Customizer
 *
 * @package dazzling
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function dazzling_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->default   = '#1FA67A';
}
add_action( 'customize_register', 'dazzling_customize_register' );

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function dazzling_customize_preview_js() {
	wp_enqueue_script( 'dazzling_customizer', get_template_directory_uri() . '/inc/js/customizer.js', array( 'customize-preview' ), '20150423', true );
}
add_action( 'customize_preview_init', 'dazzling_customize_preview_js' );