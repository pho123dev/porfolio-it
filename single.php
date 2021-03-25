<?php
get_header();
?>
<section class="single__page">
	<div class="container">
		<?php while(have_posts()){
			the_post() ; ?>
			<div class="row-divide">
				<div class="col-divide-9 col-divide-md-12">
					<div class="single__page-content mc-fix-fs">
						<h1 class="big--title"><?php echo the_title(); ?></h1>
						<?php echo the_content(); ?>
					</div>
				</div>
			</div>
		<?php }
		?>
	</div>
</section>
<?php get_template_part('sections/related-posts'); ?>
</div>
<?php
get_footer();
?>