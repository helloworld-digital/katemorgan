<?php

if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}

class WWP_Wholesale_Roles {

    private static $_instance;

    public static function getInstance() {

        if(!self::$_instance instanceof self)
            self::$_instance = new self;

        return self::$_instance;

    }

    /**
     * Add custom user role.
     *
     * @param $roleKey
     * @param $roleName
     *
     * @since 1.0.0
     */
    public function addCustomRole( $roleKey , $roleName ) {

        global $wp_roles;
        if ( ! isset( $wp_roles ) )
            $wp_roles = new WP_Roles();

        $customerRole = $wp_roles->get_role( 'customer' ); // Copy customer role capabilities

        do_action( 'wwp_action_before_add_custom_role' , $roleKey , $roleName , $customerRole->capabilities );

        add_role( $roleKey , $roleName , $customerRole->capabilities );

        do_action( 'wwp_action_after_add_custom_role' , $roleKey , $roleName , $customerRole->capabilities );

    }

    /**
     * Add custom capability to a given user role.
     *
     * @param $roleKey
     * @param $cap
     *
     * @since 1.0.0
     */
    public function addCustomCapability( $roleKey , $cap ) {

        do_action( 'wwp_action_before_add_custom_cap' , $roleKey , $cap );

        $role = get_role( $roleKey );
        $role->add_cap( $cap );

        do_action( 'wwp_action_after_add_custom_cap' , $roleKey , $cap );

    }

    /**
     * Remove custom user role.
     *
     * @param $roleKey
     *
     * @since 1.0.0
     */
    public function removeCustomRole( $roleKey ) {

        do_action( 'wwp_action_before_remove_custom_role' , $roleKey );

        remove_role( $roleKey );

        do_action( 'wwp_action_after_remove_custom_role' , $roleKey );

    }

    /**
     * Remove custom user capability to a given role.
     *
     * @param $roleKey
     * @param $cap
     *
     * @since 1.0.0
     */
    public function removeCustomCapability ( $roleKey , $cap ) {

        do_action( 'wwp_action_before_remove_custom_cap' , $roleKey , $cap );

        $role = get_role( $roleKey );

        if ( $role instanceof WP_Role )
            $role->remove_cap( $cap );

        do_action( 'wwp_action_after_remove_custom_cap' , $roleKey , $cap );

    }

    /**
     * Register a custom role to the plugin custom role options, the plugin custom role options is used to track
     * all custom roles added via this plugin.
     *
     * @param $roleKey
     * @param $roleName
     * @param $attr
     *
     * @since 1.0.0
     */
    public function registerCustomRole( $roleKey, $roleName , $attr ) {

        do_action( 'wwp_action_before_register_custom_role' , $roleKey , $roleName );

        $registeredCustomRoles = unserialize( get_option( WWP_OPTIONS_REGISTERED_CUSTOM_ROLES ) );

        $newRole = array( 'roleName' => $roleName );
        foreach( $attr as $attKey => $attVal )
            $newRole[ $attKey ] = $attVal;

        $newRole = apply_filters( 'wwp_filter_new_role', $newRole, $roleKey);

        $registeredCustomRoles[ $roleKey ] = $newRole;

        update_option( WWP_OPTIONS_REGISTERED_CUSTOM_ROLES , serialize( $registeredCustomRoles ) );

        do_action( 'wwp_action_after_register_custom_role' , $roleKey , $roleName );

    }

    /**
     * Unregister a custom role from the plugin custom role options, the plugin custom role options is used to track
     * all custom roles added via this plugin.
     *
     * @param $roleKey
     *
     * @since 1.0.0
     */
    public function unregisterCustomRole ( $roleKey ) {

        do_action( 'wwp_action_before_unregister_custom_role' , $roleKey );

        $registeredCustomRoles = unserialize( get_option( WWP_OPTIONS_REGISTERED_CUSTOM_ROLES ) );

        if( is_array( $registeredCustomRoles ) && array_key_exists( $roleKey , $registeredCustomRoles ) );
            unset( $registeredCustomRoles[ $roleKey ] );

        update_option( WWP_OPTIONS_REGISTERED_CUSTOM_ROLES , serialize( $registeredCustomRoles ) );

        do_action( 'wwp_action_after_unregister_custom_role' , $roleKey );

    }

    /**
     * Return all registered custom role from the plugin custom role options, the plugin custom role options is used to
     * track all custom roles added via this plugin.
     *
     * @return mixed
     *
     * @since 1.0.0
     */
    public function getAllRegisteredWholesaleRoles() {

        return unserialize( get_option( WWP_OPTIONS_REGISTERED_CUSTOM_ROLES ) );

    }

    /**
     * Return all wordpress registered user roles.
     *
     * @return mixed
     *
     * @since 1.0.0
     */
    public function getAllRoles() {

        global $wp_roles;

        if( !isset( $wp_roles ) )
            $wp_roles = new WP_Roles();

        return $wp_roles->get_names();

    }

    /**
     * Return all roles for the current user
     *
     * @return mixed
     *
     * @since 1.0.0
     */
    public function getUserRoles() {

        global $current_user;
        return $current_user->roles;

    }

    /**
     * Return current user's wholesale role, array is empty if none.
     *
     * @return array
     *
     * @since 1.0.0
     */
    public function getUserWholesaleRole() {

        $wholesaleRoleKeys = array();

        foreach( $this->getAllRegisteredWholesaleRoles() as $roleKey => $roleName )
            $wholesaleRoleKeys[] = $roleKey;

        return array_intersect( $this->getUserRoles() , $wholesaleRoleKeys );

    }

    /**
     * Add current user wholesale role, if any, on body tag classes.
     *
     * @param $classes
     * @return array
     *
     * @since 1.1.2
     */
    public function addWholesaleRoleToBodyClass( $classes ) {

        $wholesaleRole = $this->getUserWholesaleRole();

        if ( is_array( $wholesaleRole ) && !empty( $wholesaleRole ) )
            foreach ( $wholesaleRole as $role )
                $classes[] = $role;

        return $classes;

    }

}