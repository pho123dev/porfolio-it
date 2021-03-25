<?php
/**
 * pho template functions.
 *
 * @package pho
 */
//========================================= Site main =============================================// 
function add_favicon() {
	?>
	<link rel="shortcut icon" type="image/png" href="<?php the_field('favicon','option'); ?>" />
	<?php
}
if ( ! function_exists( 'pho_header_container' ) ) {
	function pho_header_container() {
		echo '<div class="navbar-container-inner clearfix">';
	}
}
if ( ! function_exists( 'pho_header_container_close' ) ) {
	function pho_header_container_close() {
		echo '</div>';
	}
}
if ( ! function_exists( 'pho_content_before_primary' ) ) {
	function pho_content_before_primary() {
		echo '<div id="primary" class="content-area" tabindex="-1">';
		echo ' <div class="content-area-inner">';
	}
}
if ( ! function_exists( 'pho_content_after_primary' ) ) {
	function pho_content_after_primary() {
		echo '</div> <!-- content-area -->';
		echo '</div> <!-- primary -->';
	}
}
if ( ! function_exists( 'pho_header_mobile_container' ) ) {
	function pho_header_mobile_container() {
		echo '<div class="navbar-container-inner clearfix">';
	}
}
if ( ! function_exists( 'pho_header_mobile_container_close' ) ) {
	function pho_header_mobile_container_close() {
		echo '</div>';
	}
}
if ( ! function_exists( 'pho_header_mobile' ) ) {
	function pho_header_mobile() {
		?>
		<div class="header-mobile-tools">
			<a title="<?php esc_attr_e('Menu', 'pho') ?>" href="#" id="hamburger-icon" class="">
				<span class="hamburger-icon-inner">
					<span class="line line-1"></span>
					<span class="line line-2"></span>
					<span class="line line-3"></span>
				</span>
			</a>
		</div>
		<?
	}
}
if ( ! function_exists( 'pho_nav_mobile' ) ) {
	function pho_nav_mobile() {
		$items_wrap = '';
		printf(
			'<nav id="main-nav-mobile" class="main-nav-mobile">
			<ul class="menu navigation-mobile">%s</ul>
			</nav>',
			$items_wrap
		);
	}
}
if ( ! function_exists( 'pho_site_branding' ) ) {
	function pho_site_branding() {
		?>
		<div class="site-branding">
			<?php $logo = get_field('logo_dv','option'); ?>
			<div class="site-logo">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="">
					<img src="<?php echo $logo['url']; ?>" class="default-logo" alt="<?php bloginfo( 'name' ); ?>" />
				</a>
			</div>
		</div>
		<?php
	}
}
if ( ! function_exists( 'pho_primary_navigation' ) ) {
	function pho_primary_navigation() {
		if ( has_nav_menu( 'primary' ) ) {
			?>
			<nav class="main-nav" id="nav">
				<?php
				if ( has_nav_menu( 'primary' ) ) {
					wp_nav_menu( array(
						'theme_location' => 'primary',
						'container' => '',
						'link_before'     => '<span>',
						'link_after'      => '</span>',
						'menu_id'         => 'main-navigation',
						'menu_class'        => 'menu-list',
					) );
				}else{

				}
				?>
			</nav>
			<?php
		}
	}
}
if ( ! function_exists( 'pho_social_icons' ) ) {
	function pho_social_icons() {
		?>
		<div class="social_icons">
			<ul>
				<li><a href="<?php the_field('youtube','option'); ?>"><i class="fab fa-youtube"></i></a></li>
				<li><a href="<?php the_field('twitter','option'); ?>"><i class="fab fa-twitter"></i></a></li>
				<li><a href="<?php the_field('facebook','option'); ?>"><i class="fab fa-facebook-f"></i></a></li>
				<li><a href="<?php the_field('pinterest','option'); ?>"><i class="fab fa-pinterest"></i></a></li>
				<li><a href="<?php the_field('instagram','option'); ?>"><i class="fab fa-instagram"></i></a></li>
			</ul>
		</div>
	<?php }
}
if ( ! function_exists( 'pho_search' ) ) {
	function pho_search() {
		?>
		<div class="bnt-search search-open"> <i class="fa fa-search"></i></div>
		<?php search_popup(); ?>
	<?php }
}