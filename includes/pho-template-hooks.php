<?php
/**
 * pho hooks
 *
 * @package pho
 */

/**
 * favicon
 */
add_action('wp_head', 'add_favicon');
add_action('login_head', 'add_favicon');
add_action('admin_head', 'add_favicon');

/**
 * Header
 */
add_action( 'pho_header', 'pho_header_container', 0 );

add_action( 'pho_header', 'pho_primary_navigation', 30 );
add_action( 'pho_header', 'pho_header_container_close', 41 );
add_action( 'pho_header_mobile', 'pho_header_mobile_container', 0 );

add_action( 'pho_header_mobile', 'pho_header_mobile', 20 );
add_action( 'pho_header_mobile', 'pho_nav_mobile', 50 );
add_action( 'pho_header_mobile', 'pho_header_mobile_container_close', 41 );  
