<?php

// Exit if accessed directly
if ( !defined('ABSPATH')) exit;
/*
 *  ENQUEUE SCRIPTS
 */

function admin_script(){

}
add_action('admin_enqueue_scripts', 'admin_script');
/*
 *  ENQUEUE STYLES
 */
function admin_style(){
	wp_enqueue_style( 'admin-style', THEME_URL_AD_CSS.'admin.css');
}
add_action('admin_enqueue_scripts', 'admin_style');



