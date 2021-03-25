<?php 
$page_header = true;
global $post;

if ( is_front_page() && !is_singular('page') ) {
    $title = esc_html__( 'Blog', 'pho' );
} elseif ( is_search() ) {
    $title = esc_html__( 'Search', 'pho' );
} elseif( is_home() ){
    $page_for_posts = get_option('page_for_posts', true);
    $title = apply_filters( 'the_title', get_the_title($page_for_posts), $page_for_posts );
} elseif( is_404() ) {
    $title = esc_html__( 'Page not found', 'pho' );
} elseif (is_post_type_archive('chuoi-co-so')) {
  $title = esc_html__( 'Chuỗi cơ sở', 'pho' );
}elseif ( is_post_type_archive() ) {
  $title = post_type_archive_title( '', false );
}elseif ( is_archive() ){
    $title = get_the_archive_title();
} elseif ( is_front_page() && is_singular('page') ){
    $page_on_front = get_option('page_on_front', true);
    $title = apply_filters( 'the_title', get_the_title($page_on_front), $page_on_front );
} elseif( is_page() ){
    $post_id = $post->ID;
    $title = apply_filters( 'the_title', get_the_title($post_id), $post_id );
}elseif(is_singular()){
    $post_id = $post->ID;
    $title = apply_filters( 'the_title', get_the_title($post_id), $post_id );
    if(is_singular('post')){
        $page_header = true;    
    }
}
?>
<?php $banner_single_page_dv = get_field('banner_single_page_dv','option'); ?>
<?php if(is_post_type_archive('chuoi-co-so')){ ?>
    <div class="page-header ph-align-center page-header-centered bg-page-header" <?php style_background($banner_single_page_dv); ?>>
        <div class="container">
            <?php if($page_header){ ?>
                <h1 class="page-header-title"><?php echo $title; ?></h1>
            <?php } ?>
        </div>
    </div>
    <div class="page_header_bottom single__page-breadcum">
        <div class="container">
            <?php pho_breadcrumbs(); ?>
        </div>
    </div>
<?php } else { ?>
    <div class="page-header ph-align-center page-header-centered" <?php style_background($banner_single_page_dv); ?>>
        <div class="container">

        </div>
    </div>
    <div class="mb-50"></div>
    <?php } ?>