<?php
 /*
 *  GLOBAL VARIABLES
 */
 define('THEME_DIR', get_stylesheet_directory());
 define('THEME_URL', get_stylesheet_directory_uri());
 define('THEME_URL_IMG', THEME_URL.'/assets/images/');
 define('THEME_URL_JS', THEME_URL.'/assets/js/');
 define('THEME_URL_CSS', THEME_URL.'/assets/css/');
 define('THEME_URL_CSS_IMG', THEME_URL.'/assets/css/images/');
 define('THEME_URL_FONTS', THEME_URL.'/assets/fonts/');
 define('THEME_URL_FORM', THEME_URL.'/templates/form/');
 
/*
 *  INCLUDED FILES
 */

$file_includes = [
    'includes/pho-template-functions.php',
    'includes/pho-template-hooks.php',
    'includes/custom-post.php',
    'includes/theme-shortcode.php',
    'includes/theme-assets.php',             
    'includes/theme-setup.php',               
    'includes/script-loader.php',            
    'includes/frontend.php',                 
    'includes/helpers.php',              
    'includes/optimize.php',           
    'includes/remove-url.php',
];

foreach ($file_includes as $file) {
    if (!$filePath = locate_template($file)) {
        trigger_error(sprintf(__('Missing included file'), $file), E_USER_ERROR);
    }
    require_once $filePath;
}
unset($file, $filePath);

if (is_user_logged_in()) {
    show_admin_bar(true);
    include 'admin/functions.php';
}

