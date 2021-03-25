<?php 
add_shortcode( 'list-posts', 'rmcc_post_listing_parameters_shortcode' );
function rmcc_post_listing_parameters_shortcode( $atts ) {
    ob_start();
    extract( shortcode_atts( array (
        'type' => 'post',
        'posts' => -1,
        'category' => '',
        'offsets' => '',
        'select' => '',
    ), $atts ) );
    if($category) {
        $args = array( 
            'post_type' => $type,
            'posts_per_page' => $posts,
            'offset'      => $offsets,
            'tax_query'             => array(
                array(
                    'taxonomy'  => 'category',
                    'field'     => 'slug',
                    'terms'     => $category,
                )
            )
        );
    } else {
     $args = array( 
        'post_type' => $type,
        'posts_per_page' => $posts,
        'offset'      => $offsets,
    );
 }
 $loop = new WP_Query( $args );
 while ($loop->have_posts()) { $loop->the_post();
    if(!$select == null && $select == 'bar'){
        echo post_bar('post-bar');
    } elseif(!$select == null && $select == 'absolute'){
        echo post_absolute('post-absolute');
    }  else {
       echo post('');
   }
}
}
// [list-posts type="post" posts="10" category="" offset="" select=""]
