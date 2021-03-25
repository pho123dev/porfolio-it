<?php
 /*
 *  GLOBAL VARIABLES
 */        
 define('THEME_DIR_AD', get_stylesheet_directory());
 define('THEME_URL_AD', get_stylesheet_directory_uri());
 define('THEME_URL_AD_IMG', THEME_URL_AD.'/admin/assets/images/');
 define('THEME_URL_AD_JS', THEME_URL_AD.'/admin/assets/js/');
 define('THEME_URL_AD_CSS', THEME_URL_AD.'/admin/assets/css/');
 define('THEME_URL_AD_CSS_IMG', THEME_URL_AD.'/admin/assets/css/images/');
 define('THEME_URL_AD_FONTS', THEME_URL_AD.'/admin/assets/fonts/');
 define('__ROOT__', dirname(dirname(__FILE__)));

function show_arrayy($data) {
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}
/*
 *  INCLUDED FILES
 */
$file_includes_admin = [
	'/admin/includes/acf-options',
	'/admin/includes/custom-post-type',
	'/admin/includes/theme-assets',
];
foreach ($file_includes_admin as $file_admin) {
	require_once(__ROOT__.$file_admin.'.php');
}
function custom_excerpt_length($length)
{
    return 25;
}
add_filter('excerpt_length', 'custom_excerpt_length', 999);
// Su sung file svg
function dvb_custom_mime_types($mimes)
{
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'dvb_custom_mime_types');
function my_custom_featured_image_column_image( $image ) {
    if ( !has_post_thumbnail() )
        return trailingslashit( get_stylesheet_directory_uri() ) . 'images/no-featured-image';
}
add_filter( 'featured_image_column_default_image', 'my_custom_featured_image_column_image' );

