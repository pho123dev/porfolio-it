<?php 
function check_tyle($type,$item_1,$itemt_2){
    if(!$type == null && $type == $item_1){
        echo product();
    } elseif(!$type == null && $type == $itemt_2){
     echo post('');
 }
}
add_shortcode( 'list-posts', 'rmcc_post_listing_parameters_shortcode' );
function rmcc_post_listing_parameters_shortcode( $atts ) {
    ob_start();
    extract( shortcode_atts( array (
        'type' => 'post',
        'posts' => -1,
        'taxonomy' => '',
        'terms' => '',
        'offset' => '',
        'select' => '',
    ), $atts ) );
    if($posts) {
        if($taxonomy) {
            $args = array( 
                'post_type' => $type,
                'posts_per_page' => $posts,
                'offset'      => $offset,
                'tax_query'             => array(
                    array(
                        'taxonomy'  => $taxonomy,
                        'field'     => 'slug',
                        'terms'     => $terms,
                    )
                )
            );
        } else {
           $args = array( 
            'post_type' => $type,
            'posts_per_page' => $posts,
            'offset'      => $offset,
        );
       }
       $loop = new WP_Query( $args );
       while ($loop->have_posts()) { $loop->the_post();
        check_tyle($type,'san-pham','post');

    }
} else {
   if (have_posts()) :
    while (have_posts()) : the_post();
       check_tyle($type,'san-pham','post');
   endwhile; else :
endif;
}
}
// [list-posts type="post" posts="10" taxonomy="" terms="" offset="" select=""]
