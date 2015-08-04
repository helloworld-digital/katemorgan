<?php
/* "Copyright 2012 A3 Revolution Web Design" This software is distributed under the terms of GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 */
// File Security Check
if ( ! defined( 'ABSPATH' ) ) exit;
?>
<?php
/*-----------------------------------------------------------------------------------
WC PSAD Shop Page Scroll Settings

TABLE OF CONTENTS

- var parent_tab
- var subtab_data
- var option_name
- var form_key
- var position
- var form_fields
- var form_messages

- __construct()
- subtab_init()
- set_default_settings()
- get_settings()
- subtab_data()
- add_subtab()
- settings_form()
- init_form_fields()

-----------------------------------------------------------------------------------*/

class WC_PSAD_Endless_Scroll_Settings extends WC_PSAD_Admin_UI
{
	
	/**
	 * @var string
	 */
	private $parent_tab = 'endless-scroll';
	
	/**
	 * @var array
	 */
	private $subtab_data;
	
	/**
	 * @var string
	 * You must change to correct option name that you are working
	 */
	public $option_name = '';
	
	/**
	 * @var string
	 * You must change to correct form key that you are working
	 */
	public $form_key = 'woo_psad_endless_scroll_settings';
	
	/**
	 * @var string
	 * You can change the order show of this sub tab in list sub tabs
	 */
	private $position = 1;
	
	/**
	 * @var array
	 */
	public $form_fields = array();
	
	/**
	 * @var array
	 */
	public $form_messages = array();
	
	/*-----------------------------------------------------------------------------------*/
	/* __construct() */
	/* Settings Constructor */
	/*-----------------------------------------------------------------------------------*/
	public function __construct() {
		$this->init_form_fields();
		$this->subtab_init();
		
		$this->form_messages = array(
				'success_message'	=> __( 'Endless Scroll Settings successfully saved.', 'wc_psad' ),
				'error_message'		=> __( 'Error: Endless Scroll Settings can not save.', 'wc_psad' ),
				'reset_message'		=> __( 'Endless Scroll Settings successfully reseted.', 'wc_psad' ),
			);
		
		add_action( $this->plugin_name . '-' . $this->form_key . '_settings_end', array( $this, 'include_script' ) );
			
		add_action( $this->plugin_name . '_set_default_settings' , array( $this, 'set_default_settings' ) );

		add_action( $this->plugin_name . '-' . $this->form_key . '_settings_init' , array( $this, 'reset_default_settings' ) );
		
		//add_action( $this->plugin_name . '_get_all_settings' , array( $this, 'get_settings' ) );

	}
	
	/*-----------------------------------------------------------------------------------*/
	/* subtab_init() */
	/* Sub Tab Init */
	/*-----------------------------------------------------------------------------------*/
	public function subtab_init() {
		
		add_filter( $this->plugin_name . '-' . $this->parent_tab . '_settings_subtabs_array', array( $this, 'add_subtab' ), $this->position );
		
	}
	
	/*-----------------------------------------------------------------------------------*/
	/* set_default_settings()
	/* Set default settings with function called from Admin Interface */
	/*-----------------------------------------------------------------------------------*/
	public function set_default_settings() {
		global $wc_psad_admin_interface;
		
		$wc_psad_admin_interface->reset_settings( $this->form_fields, $this->option_name, false );
	}

	/*-----------------------------------------------------------------------------------*/
	/* reset_default_settings()
	/* Reset default settings with function called from Admin Interface */
	/*-----------------------------------------------------------------------------------*/
	public function reset_default_settings() {
		global $wc_psad_admin_interface;
		
		$wc_psad_admin_interface->reset_settings( $this->form_fields, $this->option_name, true, true );
	}
	
	/*-----------------------------------------------------------------------------------*/
	/* get_settings()
	/* Get settings with function called from Admin Interface */
	/*-----------------------------------------------------------------------------------*/
	public function get_settings() {
		global $wc_psad_admin_interface;
		
		$wc_psad_admin_interface->get_settings( $this->form_fields, $this->option_name );
	}
	
	/**
	 * subtab_data()
	 * Get SubTab Data
	 * =============================================
	 * array ( 
	 *		'name'				=> 'my_subtab_name'				: (required) Enter your subtab name that you want to set for this subtab
	 *		'label'				=> 'My SubTab Name'				: (required) Enter the subtab label
	 * 		'callback_function'	=> 'my_callback_function'		: (required) The callback function is called to show content of this subtab
	 * )
	 *
	 */
	public function subtab_data() {
		
		$subtab_data = array( 
			'name'				=> 'endless-scoll',
			'label'				=> __( 'Endless Scroll', 'wc_psad' ),
			'callback_function'	=> 'wc_psad_endless_scroll_settings_form',
		);
		
		if ( $this->subtab_data ) return $this->subtab_data;
		return $this->subtab_data = $subtab_data;
		
	}
	
	/*-----------------------------------------------------------------------------------*/
	/* add_subtab() */
	/* Add Subtab to Admin Init
	/*-----------------------------------------------------------------------------------*/
	public function add_subtab( $subtabs_array ) {
	
		if ( ! is_array( $subtabs_array ) ) $subtabs_array = array();
		$subtabs_array[] = $this->subtab_data();
		
		return $subtabs_array;
	}
	
	/*-----------------------------------------------------------------------------------*/
	/* settings_form() */
	/* Call the form from Admin Interface
	/*-----------------------------------------------------------------------------------*/
	public function settings_form() {
		global $wc_psad_admin_interface;
		
		$output = '';
		$output .= $wc_psad_admin_interface->admin_forms( $this->form_fields, $this->form_key, $this->option_name, $this->form_messages );
		
		return $output;
	}
	
	/*-----------------------------------------------------------------------------------*/
	/* init_form_fields() */
	/* Init all fields of this form */
	/*-----------------------------------------------------------------------------------*/
	public function init_form_fields() {
		
  		// Define settings			
     	$this->form_fields = apply_filters( $this->option_name . '_settings_fields', array(
		
			// Shop Page Scroll
			array(
            	'name' 		=> __( 'Shop Page Scroll', 'wc_psad' ),
                'type' 		=> 'heading',
                'id'		=> 'psad_shop_page_scroll_box',
                'is_box'	=> true,
           	),
			array(  
				'name' 		=> __( 'Endless Scroll', 'wc_psad' ),
				'desc' 		=> __( "On to activate the Endless Scroll feature for Category groups on Shop page.", 'wc_psad' ),
				'class'		=> 'psad_endless_scroll_category_shop',
				'id' 		=> 'psad_endless_scroll_category_shop',
				'default'	=> 'yes',
				'type' 		=> 'onoff_checkbox',
				'checked_value'		=> 'yes',
				'unchecked_value'	=> 'no',
				'checked_label'		=> __( 'ON', 'wc_psad' ),
				'unchecked_label' 	=> __( 'OFF', 'wc_psad' ),
				'free_version'		=> true,
			),
			
			array(
                'type' 		=> 'heading',
				'class'		=> 'psad_endless_scroll_category_shop_container',
           	),
			array(  
				'name' 		=> __( 'Scroll Type', 'wc_psad' ),
				'class'		=> 'chzn-select psad_endless_scroll_category_shop_tyle',
				'id' 		=> 'psad_endless_scroll_category_shop_tyle',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'click',
				'options'	=> array(
						'click'		=> __( 'Click More...', 'wc_psad' ) ,	
						'auto'		=> __( 'Auto Scroll', 'wc_psad' ) ,	
					),
				'free_version'		=> true,
			),

			array(
            	'name' 		=> __( 'Shop Page Categories Endless Scroll on Click style', 'wc_psad' ),
                'type' 		=> 'heading',
                'class'		=> 'psad_endless_scroll_category_shop_tyle_container',
                'id'		=> 'psad_shop_page_scroll_click_box',
                'is_box'	=> true,
           	),
			array(  
				'name' 		=> __( 'Button or Hyperlink Text', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_bt_type',
				'class'		=> 'psad_es_shop_bt_type',
				'default'	=> 'link',
				'type' 		=> 'switcher_checkbox',
				'checked_value'		=> 'link',
				'unchecked_value'	=> 'button',
				'checked_label'		=> __( 'Linked', 'wc_psad' ),
				'unchecked_label' 	=> __( 'Button', 'wc_psad' ),
				'free_version'		=> true,
			),
			
			array(
            	'name' 		=> __( 'Button Styling', 'wc_psad' ),
                'type' 		=> 'heading',
				'class'		=> 'psad_es_shop_click_more_bt_container',
           	),
			array(  
				'name' 		=> __( 'Button Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll on shop page', 'wc_psad'),
				'id' 		=> 'psad_es_shop_bt_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Categories', 'wc_psad' ),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Button Align', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_bt_align',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'center',
				'options'	=> array(
						'center'		=> __( 'Center', 'wc_psad' ) ,	
						'left'			=> __( 'Left', 'wc_psad' ) ,	
						'right'			=> __( 'Right', 'wc_psad' ) ,	
					),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Button Padding', 'wc_psad' ),
				'desc' 		=> __( 'Padding from Button text to Button border', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_bt_padding',
				'type' 		=> 'array_textfields',
				'ids'		=> array( 
	 								array(  'id' 		=> 'psad_es_shop_bt_padding_tb',
	 										'name' 		=> __( 'Top/Bottom', 'wc_psad' ),
	 										'css'		=> 'width:40px;',
	 										'default'	=> 5,
	 										'free_version'		=> true ),
	 
	 								array(  'id' 		=> 'psad_es_shop_bt_padding_lr',
	 										'name' 		=> __( 'Left/Right', 'wc_psad' ),
	 										'css'		=> 'width:40px;',
	 										'default'	=> 5,
	 										'free_version'		=> true ),
	 							),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Background Colour', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_shop_bt_bg',
				'type' 		=> 'color',
				'default'	=> '#7497B9',
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Background Colour Gradient From', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_shop_bt_bg_from',
				'type' 		=> 'color',
				'default'	=> '#7497B9',
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Background Colour Gradient To', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_shop_bt_bg_to',
				'type' 		=> 'color',
				'default'	=> '#4b6E90',
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Button Border', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_bt_border',
				'type' 		=> 'border',
				'default'	=> array( 'width' => '1px', 'style' => 'solid', 'color' => '#7497B9', 'corner' => 'rounded' , 'top_left_corner' => 3 , 'top_right_corner' => 3 , 'bottom_left_corner' => 3 , 'bottom_right_corner' => 3 ),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Button Font', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_bt_font',
				'type' 		=> 'typography',
				'default'	=> array( 'size' => '12px', 'face' => 'Arial, sans-serif', 'style' => 'bold', 'color' => '#FFFFFF' ),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Button Shadow', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_bt_shadow',
				'type' 		=> 'box_shadow',
				'default'	=> array( 'enable' => 0, 'h_shadow' => '5px' , 'v_shadow' => '5px', 'blur' => '2px' , 'spread' => '2px', 'color' => '#999999', 'inset' => '' ),
				'free_version'		=> true,
			),

			array(
            	'name' 		=> __( 'Linked Text Styling', 'wc_psad' ),
                'type' 		=> 'heading',
				'class'		=> 'psad_es_shop_click_more_linked_container',
           	),
			array(  
				'name' 		=> __( 'Linked Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll on shop page', 'wc_psad'),
				'id' 		=> 'psad_es_shop_link_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Categories', 'wc_psad' ),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Linked Text Align', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_link_align',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'center',
				'options'	=> array(
						'center'		=> __( 'Center', 'wc_psad' ) ,	
						'left'			=> __( 'Left', 'wc_psad' ) ,	
						'right'			=> __( 'Right', 'wc_psad' ) ,	
					),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Hyperlink Font', 'wc_psad' ),
				'id' 		=> 'psad_es_shop_link_font',
				'type' 		=> 'typography',
				'default'	=> array( 'size' => '12px', 'face' => 'Arial, sans-serif', 'style' => 'bold', 'color' => '#7497B9' ),
				'free_version'		=> true,
			),
			array(  
				'name' 		=> __( 'Hyperlink Hover Colour', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_shop_link_font_hover_color',
				'type' 		=> 'color',
				'default'	=> '#4b6E90',
				'free_version'		=> true,
			),


			// Category Page Scroll
			array(
            	'name' 		=> __( 'Category Page Scroll', 'wc_psad' ),
                'type' 		=> 'heading',
                'class'		=> 'pro_feature_fields',
                'id'		=> 'psad_cat_page_scroll_box',
                'is_box'	=> true,
           	),
			array(  
				'name' 		=> __( 'Endless Scroll', 'wc_psad' ),
				'desc' 		=> __( "On to activate the Endless Scroll feature for Sub Category groups on Category page.", 'wc_psad' ),
				'class'		=> 'psad_endless_scroll_category',
				'id' 		=> 'psad_endless_scroll_category',
				'default'	=> 'no',
				'type' 		=> 'onoff_checkbox',
				'checked_value'		=> 'yes',
				'unchecked_value'	=> 'no',
				'checked_label'		=> __( 'ON', 'wc_psad' ),
				'unchecked_label' 	=> __( 'OFF', 'wc_psad' ),
			),
			
			array(
                'type' 		=> 'heading',
				'class'		=> 'psad_endless_scroll_category_container',
           	),
			array(  
				'name' 		=> __( 'Scroll Type', 'wc_psad' ),
				'class'		=> 'chzn-select psad_endless_scroll_category_tyle',
				'id' 		=> 'psad_endless_scroll_category_tyle',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'click',
				'options'	=> array(
						'click'		=> __( 'Click More...', 'wc_psad' ) ,	
						'auto'		=> __( 'Auto Scroll', 'wc_psad' ) ,	
					),
			),
			array(
                'type' 		=> 'heading',
                'class'		=> 'psad_endless_scroll_category_container',
				'desc'		=> sprintf( __( "<strong>Note:</strong> Set the <a target='_blank' href='%s'>WooCommerce Display type</a> to 'Show Both'. Sub Categories of the Parent Category will show on the parent category page under the Parent Cat products and will use the global 'Scroll Type' mode you set here on this page." , 'wc_psad' ), admin_url( 'admin.php?page=wc-settings&tab=products&section=display', 'relative' ) ),
           	),

			array(
            	'name' 		=> __( 'Categories Endless Scroll on Click Style', 'wc_psad' ),
                'type' 		=> 'heading',
                'class'		=> 'psad_endless_scroll_category_tyle_container pro_feature_fields',
                'id'		=> 'psad_cat_page_scroll_click_box',
                'is_box'	=> true,
           	),
			array(  
				'name' 		=> __( 'Button or Hyperlink Text', 'wc_psad' ),
				'id' 		=> 'psad_es_category_bt_type',
				'class'		=> 'psad_es_category_bt_type',
				'default'	=> 'link',
				'type' 		=> 'switcher_checkbox',
				'checked_value'		=> 'link',
				'unchecked_value'	=> 'button',
				'checked_label'		=> __( 'Linked', 'wc_psad' ),
				'unchecked_label' 	=> __( 'Button', 'wc_psad' ),
			),
			
			array(
            	'name' 		=> __( 'Button Styling', 'wc_psad' ),
                'type' 		=> 'heading',
				'class'		=> 'psad_es_category_click_more_bt_container',
           	),
			array(  
				'name' 		=> __( 'Button Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll on Category page', 'wc_psad'),
				'id' 		=> 'psad_es_category_bt_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Categories', 'wc_psad' )
			),
			array(  
				'name' 		=> __( 'Button Align', 'wc_psad' ),
				'id' 		=> 'psad_es_category_bt_align',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'center',
				'options'	=> array(
						'center'		=> __( 'Center', 'wc_psad' ) ,	
						'left'			=> __( 'Left', 'wc_psad' ) ,	
						'right'			=> __( 'Right', 'wc_psad' ) ,	
					),
			),
			array(  
				'name' 		=> __( 'Button Padding', 'wc_psad' ),
				'desc' 		=> __( 'Padding from Button text to Button border', 'wc_psad' ),
				'id' 		=> 'psad_es_category_bt_padding',
				'type' 		=> 'array_textfields',
				'ids'		=> array( 
	 								array(  'id' 		=> 'psad_es_category_bt_padding_tb',
	 										'name' 		=> __( 'Top/Bottom', 'wc_psad' ),
	 										'css'		=> 'width:40px;',
	 										'default'	=> 5 ),
	 
	 								array(  'id' 		=> 'psad_es_category_bt_padding_lr',
	 										'name' 		=> __( 'Left/Right', 'wc_psad' ),
	 										'css'		=> 'width:40px;',
	 										'default'	=> 5 ),
	 							)
			),
			array(  
				'name' 		=> __( 'Background Colour', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_category_bt_bg',
				'type' 		=> 'color',
				'default'	=> '#7497B9'
			),
			array(  
				'name' 		=> __( 'Background Colour Gradient From', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_category_bt_bg_from',
				'type' 		=> 'color',
				'default'	=> '#7497B9'
			),
			array(  
				'name' 		=> __( 'Background Colour Gradient To', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_category_bt_bg_to',
				'type' 		=> 'color',
				'default'	=> '#4b6E90'
			),
			array(  
				'name' 		=> __( 'Button Border', 'wc_psad' ),
				'id' 		=> 'psad_es_category_bt_border',
				'type' 		=> 'border',
				'default'	=> array( 'width' => '1px', 'style' => 'solid', 'color' => '#7497B9', 'corner' => 'rounded' , 'top_left_corner' => 3 , 'top_right_corner' => 3 , 'bottom_left_corner' => 3 , 'bottom_right_corner' => 3 ),
			),
			array(  
				'name' 		=> __( 'Button Font', 'wc_psad' ),
				'id' 		=> 'psad_es_category_bt_font',
				'type' 		=> 'typography',
				'default'	=> array( 'size' => '12px', 'face' => 'Arial, sans-serif', 'style' => 'bold', 'color' => '#FFFFFF' )
			),
			array(  
				'name' 		=> __( 'Button Shadow', 'wc_psad' ),
				'id' 		=> 'psad_es_category_bt_shadow',
				'type' 		=> 'box_shadow',
				'default'	=> array( 'enable' => 0, 'h_shadow' => '5px' , 'v_shadow' => '5px', 'blur' => '2px' , 'spread' => '2px', 'color' => '#999999', 'inset' => '' )
			),

			array(
            	'name' 		=> __( 'Linked Text Styling', 'wc_psad' ),
                'type' 		=> 'heading',
				'class'		=> 'psad_es_category_click_more_linked_container',
           	),
			array(  
				'name' 		=> __( 'Linked Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll on Category page', 'wc_psad'),
				'id' 		=> 'psad_es_category_link_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Categories', 'wc_psad' ),
			),
			array(  
				'name' 		=> __( 'Linked Text Align', 'wc_psad' ),
				'id' 		=> 'psad_es_category_link_align',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'center',
				'options'	=> array(
						'center'		=> __( 'Center', 'wc_psad' ) ,	
						'left'			=> __( 'Left', 'wc_psad' ) ,	
						'right'			=> __( 'Right', 'wc_psad' ) ,	
					),
			),
			array(  
				'name' 		=> __( 'Hyperlink Font', 'wc_psad' ),
				'id' 		=> 'psad_es_category_link_font',
				'type' 		=> 'typography',
				'default'	=> array( 'size' => '12px', 'face' => 'Arial, sans-serif', 'style' => 'bold', 'color' => '#7497B9' )
			),
			array(  
				'name' 		=> __( 'Font Hover Colour', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_category_link_font_hover_color',
				'type' 		=> 'color',
				'default'	=> '#4b6E90'
			),


			// Parent Category & Tag Pages Scroll
			array(
            	'name' 		=> __( 'Parent Cat & Tag Pages Scroll', 'wc_psad' ),
                'type' 		=> 'heading',
                'class'		=> 'pro_feature_fields',
                'id'		=> 'psad_tags_page_scroll_box',
                'is_box'	=> true,
           	),
			array(  
				'name' 		=> __( 'Endless Scroll', 'wc_psad' ),
				'desc' 		=> __( "On to activate the Endless Scroll feature for Products on Tag page.", 'wc_psad' ),
				'class'		=> 'psad_endless_scroll_tag',
				'id' 		=> 'psad_endless_scroll_tag',
				'default'	=> 'no',
				'type' 		=> 'onoff_checkbox',
				'checked_value'		=> 'yes',
				'unchecked_value'	=> 'no',
				'checked_label'		=> __( 'ON', 'wc_psad' ),
				'unchecked_label' 	=> __( 'OFF', 'wc_psad' ),
			),
			
			array(
                'type' 		=> 'heading',
				'class'		=> 'psad_endless_scroll_tag_container',
           	),
			array(  
				'name' 		=> __( 'Scroll Type', 'wc_psad' ),
				'class'		=> 'chzn-select psad_endless_scroll_tag_tyle',
				'id' 		=> 'psad_endless_scroll_tag_tyle',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'click',
				'options'	=> array(
						'click'		=> __( 'Click More...', 'wc_psad' ) ,	
						'auto'		=> __( 'Auto Scroll', 'wc_psad' ) ,	
					),
			),
			
			array(
            	'name' 		=> __( 'Parent Cat & Tag Pages Endless Scroll on Click Style', 'wc_psad' ),
            	'class'		=> 'psad_endless_scroll_tag_tyle_container pro_feature_fields',
                'type' 		=> 'heading',
                'id'		=> 'psad_tags_page_scroll_click_box',
                'is_box'	=> true,
           	),
			array(  
				'name' 		=> __( 'Button or Hyperlink Text', 'wc_psad' ),
				'id' 		=> 'psad_es_products_bt_type',
				'class'		=> 'psad_es_products_bt_type',
				'default'	=> 'link',
				'type' 		=> 'switcher_checkbox',
				'checked_value'		=> 'link',
				'unchecked_value'	=> 'button',
				'checked_label'		=> __( 'Linked', 'wc_psad' ),
				'unchecked_label' 	=> __( 'Button', 'wc_psad' ),
			),
			
			array(
            	'name' 		=> __( 'Button Styling', 'wc_psad' ),
                'type' 		=> 'heading',
				'class'		=> 'psad_es_tag_click_more_bt_container',
           	),
			array(  
				'name' 		=> __( 'Parent Cat Button Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll for Products', 'wc_psad'),
				'id' 		=> 'psad_es_products_bt_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Products', 'wc_psad' ),
			),
			array(  
				'name' 		=> __( 'Tag More Product Button Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll for Products', 'wc_psad'),
				'id' 		=> 'psad_es_tag_products_bt_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Products', 'wc_psad' ),
			),
			array(  
				'name' 		=> __( 'Button Align', 'wc_psad' ),
				'id' 		=> 'psad_es_products_bt_align',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'center',
				'options'	=> array(
						'center'		=> __( 'Center', 'wc_psad' ) ,	
						'left'			=> __( 'Left', 'wc_psad' ) ,	
						'right'			=> __( 'Right', 'wc_psad' ) ,	
					),
			),
			array(  
				'name' 		=> __( 'Button Padding', 'wc_psad' ),
				'desc' 		=> __( 'Padding from Button text to Button border', 'wc_psad' ),
				'id' 		=> 'psad_es_products_bt_padding',
				'type' 		=> 'array_textfields',
				'ids'		=> array( 
	 								array(  'id' 		=> 'psad_es_products_bt_padding_tb',
	 										'name' 		=> __( 'Top/Bottom', 'wc_psad' ),
	 										'css'		=> 'width:40px;',
	 										'default'	=> 5 ),
	 
	 								array(  'id' 		=> 'psad_es_products_bt_padding_lr',
	 										'name' 		=> __( 'Left/Right', 'wc_psad' ),
	 										'css'		=> 'width:40px;',
	 										'default'	=> 5 ),
	 							)
			),
			array(  
				'name' 		=> __( 'Background Colour', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_products_bt_bg',
				'type' 		=> 'color',
				'default'	=> '#7497B9'
			),
			array(  
				'name' 		=> __( 'Background Colour Gradient From', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_products_bt_bg_from',
				'type' 		=> 'color',
				'default'	=> '#7497B9'
			),
			array(  
				'name' 		=> __( 'Background Colour Gradient To', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_products_bt_bg_to',
				'type' 		=> 'color',
				'default'	=> '#4b6E90'
			),
			array(  
				'name' 		=> __( 'Button Border', 'wc_psad' ),
				'id' 		=> 'psad_es_products_bt_border',
				'type' 		=> 'border',
				'default'	=> array( 'width' => '1px', 'style' => 'solid', 'color' => '#7497B9', 'corner' => 'rounded' , 'top_left_corner' => 3 , 'top_right_corner' => 3 , 'bottom_left_corner' => 3 , 'bottom_right_corner' => 3 ),
			),
			array(  
				'name' 		=> __( 'Button Font', 'wc_psad' ),
				'id' 		=> 'psad_es_products_bt_font',
				'type' 		=> 'typography',
				'default'	=> array( 'size' => '12px', 'face' => 'Arial, sans-serif', 'style' => 'bold', 'color' => '#FFFFFF' )
			),
			array(  
				'name' 		=> __( 'Button Shadow', 'wc_psad' ),
				'id' 		=> 'psad_es_products_bt_shadow',
				'type' 		=> 'box_shadow',
				'default'	=> array( 'enable' => 0, 'h_shadow' => '5px' , 'v_shadow' => '5px', 'blur' => '2px' , 'spread' => '2px', 'color' => '#999999', 'inset' => '' )
			),

			array(
            	'name' 		=> __( 'Linked Text Styling', 'wc_psad' ),
                'type' 		=> 'heading',
				'class'		=> 'psad_es_tag_click_more_linked_container',
           	),
			array(  
				'name' 		=> __( 'Parent Cat Linked Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll for Products', 'wc_psad'),
				'id' 		=> 'psad_es_products_link_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Products', 'wc_psad' ),
			),
			array(  
				'name' 		=> __( 'Tag More Product Linked Text', 'wc_psad' ),
				'desc' 		=> __('Text for Endless Scroll for Products', 'wc_psad'),
				'id' 		=> 'psad_es_tag_products_link_text',
				'type' 		=> 'text',
				'default'	=> __( 'Click More Products', 'wc_psad' ),
			),
			array(  
				'name' 		=> __( 'Linked Text Align', 'wc_psad' ),
				'id' 		=> 'psad_es_products_link_align',
				'css' 		=> 'width:120px;',
				'type' 		=> 'select',
				'default'	=> 'center',
				'options'	=> array(
						'center'		=> __( 'Center', 'wc_psad' ) ,	
						'left'			=> __( 'Left', 'wc_psad' ) ,	
						'right'			=> __( 'Right', 'wc_psad' ) ,	
					),
			),
			array(  
				'name' 		=> __( 'Hyperlink Font', 'wc_psad' ),
				'id' 		=> 'psad_es_products_link_font',
				'type' 		=> 'typography',
				'default'	=> array( 'size' => '12px', 'face' => 'Arial, sans-serif', 'style' => 'bold', 'color' => '#7497B9' )
			),
			array(  
				'name' 		=> __( 'Hyperlink Hover Colour', 'wc_psad' ),
				'desc' 		=> __('Default [default_value]', 'wc_psad'),
				'id' 		=> 'psad_es_products_link_font_hover_color',
				'type' 		=> 'color',
				'default'	=> '#4b6E90',
			),

        ));
	}

	public function include_script() {
	?>
<script>
(function($) {
	
	$(document).ready(function() {

		// Shop Page Scroll
		if ( $("input.psad_es_shop_bt_type:checked").val() == 'link') {
			$(".psad_es_shop_click_more_bt_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		} else {
			$(".psad_es_shop_click_more_linked_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		if ( $("select.psad_endless_scroll_category_shop_tyle").val() != 'click') {
			$(".psad_endless_scroll_category_shop_tyle_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		if ( $("input.psad_endless_scroll_category_shop:checked").val() != 'yes') {
			$(".psad_endless_scroll_category_shop_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
			$(".psad_endless_scroll_category_shop_tyle_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		$(document).on( "a3rev-ui-onoff_checkbox-switch", '.psad_endless_scroll_category_shop', function( event, value, status ) {
			$(".psad_endless_scroll_category_shop_container").attr('style','display:none;');
			$(".psad_endless_scroll_category_shop_tyle_container").attr('style','display:none;');
			if ( status == 'true' ) {
				$(".psad_endless_scroll_category_shop_container").slideDown();
				if ( $("select.psad_endless_scroll_category_shop_tyle").val() == 'click') {
					$(".psad_endless_scroll_category_shop_tyle_container").slideDown();
				}
			} else {
				$(".psad_endless_scroll_category_shop_container").slideUp();
				$(".psad_endless_scroll_category_shop_tyle_container").slideUp();
			}
		});

		$("select.psad_endless_scroll_category_shop_tyle").on( 'change', function() {
			$(".psad_endless_scroll_category_shop_tyle_container").attr('style','display:none;');
			if ( $(this).val() == 'click' ) {
				$(".psad_endless_scroll_category_shop_tyle_container").slideDown();
			} else {
				$(".psad_endless_scroll_category_shop_tyle_container").slideUp();
			}
		});

		$(document).on( "a3rev-ui-onoff_checkbox-switch", '.psad_es_shop_bt_type', function( event, value, status ) {
			$(".psad_es_shop_click_more_linked_container").attr('style','display:none;');
			$(".psad_es_shop_click_more_bt_container").attr('style','display:none;');
			if ( status == 'true' ) {
				$(".psad_es_shop_click_more_linked_container").slideDown();
				$(".psad_es_shop_click_more_bt_container").slideUp();
			} else {
				$(".psad_es_shop_click_more_linked_container").slideUp();
				$(".psad_es_shop_click_more_bt_container").slideDown();
			}
		});


		// Category Page Scroll
		if ( $("input.psad_es_category_bt_type:checked").val() == 'link') {
			$(".psad_es_category_click_more_bt_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		} else {
			$(".psad_es_category_click_more_linked_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		if ( $("select.psad_endless_scroll_category_tyle").val() != 'click') {
			$(".psad_endless_scroll_category_tyle_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		if ( $("input.psad_endless_scroll_category:checked").val() != 'yes') {
			$(".psad_endless_scroll_category_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
			$(".psad_endless_scroll_category_tyle_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		$(document).on( "a3rev-ui-onoff_checkbox-switch", '.psad_endless_scroll_category', function( event, value, status ) {
			$(".psad_endless_scroll_category_container").attr('style','display:none;');
			$(".psad_endless_scroll_category_tyle_container").attr('style','display:none;');
			if ( status == 'true' ) {
				$(".psad_endless_scroll_category_container").slideDown();
				if ( $("select.psad_endless_scroll_category_tyle").val() == 'click') {
					$(".psad_endless_scroll_category_tyle_container").slideDown();
				}
			} else {
				$(".psad_endless_scroll_category_container").slideUp();
				$(".psad_endless_scroll_category_tyle_container").slideUp();
			}
		});

		$("select.psad_endless_scroll_category_tyle").on( 'change', function() {
			$(".psad_endless_scroll_category_tyle_container").attr('style','display:none;');
			if ( $(this).val() == 'click' ) {
				$(".psad_endless_scroll_category_tyle_container").slideDown();
			} else {
				$(".psad_endless_scroll_category_tyle_container").slideUp();
			}
		});

		$(document).on( "a3rev-ui-onoff_checkbox-switch", '.psad_es_category_bt_type', function( event, value, status ) {
			$(".psad_es_category_click_more_linked_container").attr('style','display:none;');
			$(".psad_es_category_click_more_bt_container").attr('style','display:none;');
			if ( status == 'true' ) {
				$(".psad_es_category_click_more_linked_container").slideDown();
				$(".psad_es_category_click_more_bt_container").slideUp();
			} else {
				$(".psad_es_category_click_more_linked_container").slideUp();
				$(".psad_es_category_click_more_bt_container").slideDown();
			}
		});


		// Parent Category & Tag Pages Scroll
		if ( $("input.psad_es_products_bt_type:checked").val() == 'link') {
			$(".psad_es_tag_click_more_bt_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		} else {
			$(".psad_es_tag_click_more_linked_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		if ( $("select.psad_endless_scroll_tag_tyle").val() != 'click') {
			$(".psad_endless_scroll_tag_tyle_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		if ( $("input.psad_endless_scroll_tag:checked").val() != 'yes') {
			$(".psad_endless_scroll_tag_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
			$(".psad_endless_scroll_tag_tyle_container").css( {'visibility': 'hidden', 'height' : '0px', 'overflow' : 'hidden', 'margin-bottom' : '0px'} );
		}

		$(document).on( "a3rev-ui-onoff_checkbox-switch", '.psad_endless_scroll_tag', function( event, value, status ) {
			$(".psad_endless_scroll_tag_container").attr('style','display:none;');
			$(".psad_endless_scroll_tag_tyle_container").attr('style','display:none;');
			if ( status == 'true' ) {
				$(".psad_endless_scroll_tag_container").slideDown();
				if ( $("select.psad_endless_scroll_tag_tyle").val() == 'click') {
					$(".psad_endless_scroll_tag_tyle_container").slideDown();
				}
			} else {
				$(".psad_endless_scroll_tag_container").slideUp();
				$(".psad_endless_scroll_tag_tyle_container").slideUp();
			}
		});

		$("select.psad_endless_scroll_tag_tyle").on( 'change', function() {
			$(".psad_endless_scroll_tag_tyle_container").attr('style','display:none;');
			if ( $(this).val() == 'click' ) {
				$(".psad_endless_scroll_tag_tyle_container").slideDown();
			} else {
				$(".psad_endless_scroll_tag_tyle_container").slideUp();
			}
		});

		$(document).on( "a3rev-ui-onoff_checkbox-switch", '.psad_es_products_bt_type', function( event, value, status ) {
			$(".psad_es_tag_click_more_linked_container").attr('style','display:none;');
			$(".psad_es_tag_click_more_bt_container").attr('style','display:none;');
			if ( status == 'true' ) {
				$(".psad_es_tag_click_more_linked_container").slideDown();
				$(".psad_es_tag_click_more_bt_container").slideUp();
			} else {
				$(".psad_es_tag_click_more_linked_container").slideUp();
				$(".psad_es_tag_click_more_bt_container").slideDown();
			}
		});

	});

})(jQuery);
</script>
    <?php
	}
}

global $wc_psad_endless_scroll_settings;
$wc_psad_endless_scroll_settings = new WC_PSAD_Endless_Scroll_Settings();

/** 
 * wc_psad_endless_scroll_settings_form()
 * Define the callback function to show subtab content
 */
function wc_psad_endless_scroll_settings_form() {
	global $wc_psad_endless_scroll_settings;
	$wc_psad_endless_scroll_settings->settings_form();
}

?>