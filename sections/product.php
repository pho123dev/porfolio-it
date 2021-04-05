<?php if (have_rows('product')) {
	the_row();
	$title = get_sub_field('title');
	$sub_title = get_sub_field('sub_title');
	$content = get_sub_field('content');
	$background = get_sub_field('background');
	?>
	<section class="product about">
		<div class="bg-product">
			<?php style_before('bg-product',$background['url']) ?>
			<div class="container">
				<div class="col-product">
					<div class="row-grid-2">
						<div class="item-left">
							<div class="item-product">

							</div>
						</div>
						<div class="item-right">
							<div class="item-product item-about">
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
		<div class="list_product row-grid-5">
			<?php echo do_shortcode( '[list-posts type="san-pham" posts="10" taxonomy="" terms="" offset="" select=""]' ); ?>
		</div>
	</section>
	<?php
} ?>