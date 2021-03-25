<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
  <meta charset="<?php bloginfo('charset'); ?>" />
  <title><?php bloginfo('name'); ?> | <?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
  <meta name="description" content="Diva" >
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="author" content="Diva IT Team"/>
  <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
  <meta  property="og:image" content="<?php $post_thumbnail = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID),'large'); echo $post_thumbnail[0]; ?>" />
  <?php get_template_part('templates/out-site/google-tool'); ?>
  <?php get_template_part( 'includes/includes-style' ); ?>
  <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
  <header class="header" id="header">
    <div class="header-main sticky-header">
      <div class="container">
       <?php
            /**
         * @hooked pho_header_container                - 10
         * @hooked pho_site_branding                   - 20
         * @hooked pho_primary_navigation              - 30
         * @hooked pho_header_container_close          - 41
         */
            //do_action( 'pho_header' ); 
            ?>
          </div>
        </div>
      </header>
      <header id="header-content-mobile" class="clearfix sticky-header">
        <?php
        /*
         * @hooked pho_header_mobile_container        - 0
         * @hooked pho_site_branding                  - 10
         * @hooked pho_header_mobile                  - 20
         * @hooked pho_nav_mobile                     - 30
         * @hooked pho_header_mobile_container_close  - 41
         */
        //do_action( 'pho_header_mobile' );
        ?>
      </header>