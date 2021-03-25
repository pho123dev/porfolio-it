<?php 

/*hàm thiết lập chức năng*/

if (!function_exists('pho_setup')) {
	function pho_setup(){
		add_filter('use_block_editor_for_post', '__return_false');
		/*tạo 1 text domain */
		$language= THEME_DIR .'/language';
		load_theme_textdomain( 'pho',$language);
		/*khai báo ảnh đại diện */
		add_theme_support( 'post_thumbnail' );
		/*them chuc7c1 năng title text cho web */
		add_theme_support( 'title-tag' );
		add_theme_support( 'post-thumbnails' );
		//set_post_thumbnail_size(400,400,true);
		//add_image_size( 'banner', $width = 1500, $height = 0, $crop = false );
		// khai báo menu 
		register_nav_menu( 'primary',__('Primary menu','pho') );

		// đăng kí 1 side bar 
		$copyright=array( 'name'=>__('Copyright','pho'), 'id' =>'copyright', ); register_sidebar( $copyright );
		$footer=array('name'=>__('Footer','pho'), 'id' =>'footer', ); register_sidebar( $footer );
		$sidebar=array('name'=>__('Sidebar','pho'), 'id' =>'sidebar', ); register_sidebar( $sidebar );
		/*hàm tạo 1 menu */
	}
	add_action('init','pho_setup');
}

