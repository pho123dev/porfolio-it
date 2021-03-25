<?php

// Exit if accessed directly
if ( !defined('ABSPATH')) exit;
remove_action( 'wp_head', 'feed_links_extra', 3 );
remove_action( 'wp_head', 'feed_links', 2 );
remove_action( 'wp_head', 'rsd_link' );
remove_action( 'wp_head', 'wlwmanifest_link' );
remove_action( 'wp_head', 'index_rel_link' );
remove_action( 'wp_head', 'parent_post_rel_link', 10);
remove_action( 'wp_head', 'start_post_rel_link', 10 );
remove_action( 'wp_head', 'adjacent_posts_rel_link', 10);
remove_action( 'wp_head', 'wp_generator' );
remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
remove_action( 'wp_print_styles', 'print_emoji_styles' );
remove_action( 'admin_print_styles', 'print_emoji_styles' );

// Remove WP Version From Styles	
add_filter( 'style_loader_src', 'sdt_remove_ver_css_js', 9999 );
// Remove WP Version From Scripts
add_filter( 'script_loader_src', 'sdt_remove_ver_css_js', 9999 );

// Function to remove version numbers
function sdt_remove_ver_css_js( $src ) {
 if ( strpos( $src, 'ver=' ) )
  $src = remove_query_arg( 'ver', $src );
return $src;
}

// add_filter('nav_menu_css_class', 'kt_css_attributes_filter', 100, 1);
// add_filter('nav_menu_item_id', 'kt_css_attributes_filter', 100, 1);
// add_filter('page_css_class', 'kt_css_attributes_filter', 100, 1);

function kt_css_attributes_filter($var) {
  return is_array($var) ? array_intersect($var, array('current-menu-item', 'menu-item-has-children', 'header-button')) : '';
}

//** *Enable upload for webp image files.*/
function webp_upload_mimes($existing_mimes) {
    $existing_mimes['webp'] = 'image/webp';
    return $existing_mimes;
}
add_filter('mime_types', 'webp_upload_mimes');


//Remove Gutenberg Block Library CSS from loading on the frontend
function cruxstore_remove_wp_block_library_css(){
    wp_dequeue_style( 'wp-block-library' );
    wp_dequeue_style( 'wp-block-library-theme' );
    wp_dequeue_style( 'wc-block-style' );
    
} 
add_action( 'wp_enqueue_scripts', 'cruxstore_remove_wp_block_library_css', 100 );

function cruxstore_deregister_embed(){
    wp_dequeue_script( 'wp-embed' );
}
add_action( 'wp_footer', 'cruxstore_deregister_embed' );

function disable_emojis() {
    remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
    remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
    remove_action( 'wp_print_styles', 'print_emoji_styles' );
    remove_action( 'admin_print_styles', 'print_emoji_styles' );
    remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
    remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
    remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
    add_filter( 'tiny_mce_plugins', 'disable_emojis_tinymce' );
}
add_action( 'init', 'disable_emojis' );
function disable_emojis_tinymce( $plugins ) {
    if ( is_array( $plugins ) ) {
        return array_diff( $plugins, array( 'wpemoji' ) );
    } else {
        return array();
    }
}
add_action( 'wp_enqueue_scripts', 'my_lazyload_assets', 10 );
function my_lazyload_assets() {
  $js_dir = get_stylesheet_directory_uri() . '/js';
  wp_enqueue_script( 'my-lazyload', $js_dir . '/lazyload.js', [], '', true );
}
function wporg_11560356_dequeue_script() {
  if ( is_front_page() ) {
    wp_dequeue_script( 'admin-bar' );
    wp_dequeue_script( 'wordfenceAJAXjs' );
    wp_dequeue_script( 'rank-math' );
    wp_dequeue_script( 'wp-script-bootstrap.min' );
  }
}
add_action( 'wp_print_scripts', 'wporg_11560356_dequeue_script', 100 );
