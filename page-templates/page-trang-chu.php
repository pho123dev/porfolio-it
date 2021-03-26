<?php 
 /**
 * Template name: Trang chủ
 */
 get_header();
 global $wp_query;
 $page_id = $wp_query->post->ID;
 ?>

 <?php get_template_part( 'sections/about' ); ?>
 <?php get_template_part( 'sections/product' ); ?>
 <?php get_template_part( 'sections/news' ); ?>
 <?php get_template_part( 'sections/contact' ); ?>
 <?php get_template_part( 'sections/info-contact' ); ?>

 <?php get_footer(); ?>