<?php get_header(); ?>
<?php if (have_rows('about_page_product','option')) {
	the_row();
	$title = get_sub_field('title');
	$sub_title = get_sub_field('sub_title');
	$content = get_sub_field('content');
	?>
	<section class="about about-page ky-nang-page">
		<div class="bg-about">
			<div class="container">
				<div class="col-about">
					<div class="row-grid-2">
						<div class="item-left">
							<div class="item-about">
								<div class="_number">04</div>
								<div class="_title"><div class="_rotate">Sản phẩm</div></div>
							</div>
						</div>
						<div class="item-right">
							<div class="item-about top">
								<div class="_bottom">
									<?php title_section_arr(array(
										'title'	=> 	$title,
										'sub_title'	=> 	$sub_title,
									)); ?>
									<div class="_content">
										<?php echo $content; ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php
} ?>
<section class="product">
	<div class="list_product row-grid-5">
		<?php echo do_shortcode( '[list-posts type="san-pham" posts="" taxonomy="" terms="" offset="" select=""]' ); ?>
		<?php
		pagination(array(
			'class_div' => 'ereaders-pagination',
			'class_ul' => 'page-numbers',
			'class_li' => 'revious page-numbers',
			'prev_text' => '<span aria-label="Prev"><i class="fas fa-chevron-left"></i></span>',
			'next_text' => '<span aria-label="Next"><i class="fas fa-chevron-right"></i></span>'
		));
		?>
	</div>
</section>
<?php get_footer(); ?>