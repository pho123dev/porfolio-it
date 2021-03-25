<?php 
// class slide
function class_slide($sl) {
	echo "hero-slider slider-{$sl} owl-carousel owl-loaded owl-drag";
} 
function title_section_arr( $arr, $echo = 1) {
	$arr = shortcode_atts( array( 
		'title' => '',
		'content' => ''
	), $arr );
	extract($arr);
	?>
	<div class="title-arr">
		<div class="title-arr-2"><?php echo $title; ?></div>
		<p><?php echo $content; ?></p>
	</div>
	<?php
	return $echo;
}
// title_section_arr(array(
// 	'title' => '',
// 	'content' => '',
// ));
function style_background($url){
	echo "
	style='background: url($url);
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	z-index: 1;
	overflow: hidden;
	'";
}
function style_before($class,$url){
	echo "
	<style>
	.$class {
		position: relative;
	}
	.$class:before {
		background-image: url($url);
	}
	</style>
	";
}

// form tìm kiếm
function search_button(){
	?>
	<form class="search-button" method="get" action="/">
		<input type="text" placeholder="Nhập từ khóa tìm kiếm..." autocomplete="off" name="s" value="" class="search-global__input"/>
		<button type="submit" value=""><i class="fa fa-search"></i></button>
	</form>
	<?php
}
function search_key(){
	?>
	<form class="search-global" method="get" action="/">
		<input type="text" placeholder="Nhập từ khóa tìm kiếm..." autocomplete="off" name="s" value="" class="search-global__input"/>
		<label><input type="submit" value=""></label>
	</form>
	<?php
}
function search_popup(){
	?>
	<div class="popup-search open-search"> 
		<div class="popup-search-form">
			<div class="search-close"><span></span></div>
			<?php search_key(); ?>
		</div> 
	</div>
	<?php
}
function why_item($icon,$title,$content){
	?>
	<div class="_item right row-grid-2">
		<div class="_left">
			<div class="_icon">
				<img src="<?php echo $icon['url']; ?>" alt="icon">
			</div>
		</div>
		<div class="_right">
			<div class="_title">
				<?php echo $title; ?>
			</div>
			<div class="_content">
				<?php echo $content; ?>
			</div>
		</div>
	</div>
	<?php 
}

function testimonials_item($testimonials){
	if (have_rows($testimonials)) {
		while (have_rows($testimonials)) {
			the_row();
			$image = get_sub_field('image');
			$title = get_sub_field('title');
			$position = get_sub_field('position');
			$describe = get_sub_field('content');
			?>
			<div class="_item_testimonial">
				<div class="_image_testimonial_asu">
					<div class="_image_testimonial"><img src="<?php echo $image['url']; ?>" alt="image"></div>
				</div>
				<div class="_content_testimonial">
					<div class="_position"><?php echo $position; ?></div>
					<div class="_title"><?php echo $title; ?></div>
					<div class="_describe"><?php echo $describe; ?></div>
				</div>
			</div>
			<?php
		}
	} 
}