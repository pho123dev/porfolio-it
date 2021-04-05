<?php 
add_filter( 'gform_enable_field_label_visibility_settings', '__return_true' );
function create_post_type($title,$name,$slug,$support){
    $labels = array(
        'name' => $title,
        'singular_name' => $title,
        'add_new' => 'Add New',
        'add_new_item' => 'Add New',
        'edit_item' => 'Edit '.$title,
        'new_item' => 'New '.$title,
        'all_items' => 'All '.$title,
        'view_item' => 'View '.$title,
        'search_items' => 'Search '.$title,
        'not_found' => 'No post found',
        'not_found_in_trash' => 'No post found in Trash',
        'parent_item_colon' => '',
        'menu_name' => $title
    );
    $args = array(
        'labels' => $labels,
        'menu_icon' => 'dashicons-images-alt2',
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'has_archive'         => true,
        'show_in_nav_menus'   => true,
        'show_in_nav_menus'   => true,
        'hierarchical' => false,
        'can_export'          => true,
        'menu_position' => null,
        'rewrite' => array( 'slug' =>$slug),
        'supports' => $support
    );
    register_post_type($name, $args );
}

/* tạo taxonomy  */
function create_taxonomy_theme($title,$slug,$name,$post_type) {
    $labels = array(
        'name' => $title,
        'singular' => $title,
        'menu_name' => $title
    );
    $args = array(
        'labels' => $labels,
        'show_admin_column' => true,
        'hierarchical' => true,
        'public' => true,
        'rewrite' => array('slug' => $slug),
//'rewrite' => array('slug' => $slug,'with_front' => true,'hierarchical' => true),
        'show_tagcloud' => true
    );
    register_taxonomy($name,$post_type,$args);
}
create_post_type("Sản phẩm","san-pham","san-pham",array( 'title','editor','thumbnail','excerpt','comments'));
create_taxonomy_theme("Danh mục Sản phẩm","san-pham-cat","san-pham-cat","san-pham");