<?php 
 /**
 * Template name: Trang chủ
 */
 get_header();
 global $wp_query;
 $page_id = $wp_query->post->ID;
 ?>

 <?php get_template_part( 'sections/about' ); ?>

 <?php get_footer(); ?>