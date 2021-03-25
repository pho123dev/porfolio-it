<?php

// Exit if accessed directly
if ( !defined('ABSPATH')) exit;
// Site main
/*
 *  ENQUEUE SCRIPTS
 */
function theme_enqueue_script(){
	wp_enqueue_script( 'plugins-main', THEME_URL_JS . 'plugins.js', array( 'jquery' ), null, true );
	wp_script_add_data( 'plugins-main', 'async', true );
	wp_enqueue_script( 'functions-main', THEME_URL_JS . 'main.min.js', array( 'jquery' ), null, true );
	wp_script_add_data( 'functions-main', 'async', true );
	wp_script_add_data( 'jquery-core', 'async', true );

}
add_action('wp_enqueue_scripts', 'theme_enqueue_script');
/*
 *  ENQUEUE STYLES
 */
function theme_enqueue_styles(){
	wp_enqueue_style( 'plugins-style', THEME_URL_CSS.'plugins.css');
	wp_enqueue_style( 'style-style', THEME_URL_CSS.'style.css');
	wp_enqueue_style( 'responsive-style', THEME_URL_CSS.'responsive.css');
}
add_action('wp_enqueue_scripts', 'theme_enqueue_styles');
