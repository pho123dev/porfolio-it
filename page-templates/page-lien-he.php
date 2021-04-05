<?php 
 /**
 * Template name: Trang Liên hệ
 */

 get_header(); ?>
<section class="about about-page map">
	<div class="bg-about">
		<div class="container">
			<div class="col-about">
				<div class="row-grid-2">
					<div class="item-left">
						<div class="item-about">
							<div class="_number">06</div>
							<div class="_title"><div class="_rotate">Liên hệ</div></div>
						</div>
					</div>
					<div class="item-right">
						<div class="item-about top">
							<div class="_bottom">
								<?php title_section_arr(array(
									'title'	=> 	'Liên hệ',
									'sub_title'	=> 	'TEAM IT',
								)); ?>
								<div class="_content">
									<div class="_image _iframe"><?php the_field('map','option'); ?></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer();?>