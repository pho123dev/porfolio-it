<?php /* Template Name: Trang Kỹ năng*/ ?>
<?php get_header(); ?>
<?php if (have_rows('about')) {
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
								<div class="_number">03</div>
								<div class="_title"><div class="_rotate">Kĩ năng</div></div>
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
							<div class="item-about bottom">
								<div class="skills">
									<?php if (have_rows('skills')) {
										while (have_rows('skills')) {
											the_row();
											$name = get_sub_field('name');
											$number = get_sub_field('number');
											?>
											<div class="skill">
												<div class="skill-name"><?php echo $name; ?></div>
												<div class="skill-bar">
													<div class="skill-per" per="<?php echo $number; ?>"></div>
												</div>
											</div>
											<?php
										}
									} ?>
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
<?php get_footer(); ?>