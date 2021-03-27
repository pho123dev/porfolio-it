<?php 
// class slide
function class_slide($sl) {
	echo "hero-slider slider-{$sl} owl-carousel owl-loaded owl-drag";
} 
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
		position: absolute;
		height: 100%;
		width: 100%;
		background-repeat: no-repeat;
		content:'';
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

function title_section_arr( $arr, $echo = 1) {
	$arr = shortcode_atts( array( 
		'title' => '',
		'sub_title' => ''
	), $arr );
	extract($arr);
	?>
	<div class="title-section">
		<div class="_title"><?php echo $title; ?></div>	
		<p class="_sub_title"><?php echo $sub_title; ?></p>
	</div>
	<?php
	return $echo;
}
