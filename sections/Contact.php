<?php if (have_rows('contact')) {
	the_row();
	$title = get_sub_field('title');
	$sub_title = get_sub_field('sub_title');
	$content = get_sub_field('content');
	$image = get_sub_field('image');
	?>
	<section class="contact contacttop">
		<div class="bg-contact">
			<div class="container">
				<div class="col-contact">
					<div class="_top">
						<div class="row-grid-2">
							<div class="_left">
								<div class="_title_section">
									<?php title_section_arr(array(
											'title'	=> 	$title,
											'sub_title'	=> 	$sub_title,
										)); ?>
								</div>
								<p><?php echo $content; ?></p>
							</div>	
							<div class="_right"></div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="contact contactbottom">
		<div class="bg-contact">
			<div class="container">
				<div class="col-contact">
					<div class="_bottom">
						<div class="row-grid-2">
							<div class="item-left">
								<div class="form_contact">
									<?php get_template_part( 'templates/form/form-demo' ); ?>
								</div>
							</div>
							<div class="item-right">
								<div class="_image"><img src="<?php echo $image['url']; ?>" alt="image"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php
} ?>