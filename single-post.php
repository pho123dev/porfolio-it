<?php get_header(); ?>
<?php if (have_posts()) : ?>
	<?php while (have_posts()) : the_post(); ?>
		<div class="_single">
			<div class="container">
				<div class="row-grid-layout">
					<div class="main left">
						<section class="about about-page">
							<div class="bg-about">
								<div class="top">
									<div class="row-grid-2">
										<div class="item-left">
											<div class="item-about">
												<div class="_number">03</div>
												<div class="_title"><div class="_rotate">Tin tức</div></div>
											</div>
										</div>
										<div class="item-right">
											<div class="item-about top">
												<div class="_bottom">
													<?php title_section_arr(array(
														'title'	=> 	'Tin tức',
														'sub_title'	=> 	'TEAM IT',
													)); ?>
													<div class="_content">
														<h1><?php the_title(); ?></h1>
														<div class="meta">
															<!-- <span class="author">
																<?php //the_author(); ?>
															</span> /  -->
															<span class="date"><?php echo get_the_date("d - m - Y");?></span> 
														</div>
														<div class="image"><img src=" <?php the_post_thumbnail_url(); ?>" alt="image"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="content">
									<?php the_content(); ?>
								</div>
							</div>
						</section>
					</div>
					<div class="sidebar right">
						<?php get_sidebar(); ?>
					</div>
					<div class="related-post bottom">
						<h3>Bài viết liên quan</h3>
						<div class="row-grid-3">
							<?php loop_single_related_post(6,''); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php endwhile; else : ?>
	<p>Đang cập nhật</p>
<?php endif; ?>
<?php get_footer(); ?>