<?php 
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
    if(!$type == null && $type == 'san-pham'){
        echo product();
    } elseif(!$type == null && $type == 'post'){
       echo post('');
   }
}
}
// [list-posts type="post" posts="10" taxonomy="" terms="" offset="" select=""]
