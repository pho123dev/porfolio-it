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



function tao_custom_post_type()
{
 
    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        'name' => 'Các sản phẩm', //Tên post type dạng số nhiều
        'singular_name' => 'Sản phẩm' //Tên post type dạng số ít
    );
 
    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Post type đăng sản phẩm', //Mô tả của post type
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'author',
            'thumbnail',
            'comments',
            'trackbacks',
            'revisions',
            'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => '', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
    );
 
    register_post_type('sanpham', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
 
}
/* Kích hoạt hàm tạo custom post type */
add_action('init', 'tao_custom_post_type');