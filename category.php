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
								<div class="_number">05</div>
								<div class="_title"><div class="_rotate">Tin tức</div></div>
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
<section class="news-category">
	<div class="container">
		<div class="list_post row-grid-3">
			<?php echo do_shortcode( '[list-posts type="post" posts="" taxonomy="" terms="" offset="" select=""]' ); ?>
		</div>
	</div>
</section>
<?php get_footer(); ?>