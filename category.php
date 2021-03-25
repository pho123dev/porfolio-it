<?php 
get_header(); ?>
<section class="page__tintuc">
	<div class="container">
		<div class="row-divide">
			<?php if (have_posts()) : ?>
				<?php while (have_posts()) : the_post(); ?>
					<div class="col-divide-4 page__tintuc-all col-divide-sm-12 col-divide-md-6">
						<div class="page__tintuc-img">
							<a href="<?php the_permalink(); ?>"><?php echo the_post_thumbnail('larg'); ?></a>
						</div>
						<div class="page__tintuc-date">
							<i class="fas fa-calendar-alt"></i>&nbsp;<?php echo get_the_date();?>
						</div>
						<div class="page__tintuc-smalltitle">
							<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
						</div>
						<div class="page__tintuc-content">
							<?php the_excerpt(); ?><a href="<?php the_permalink(); ?>">ĐỌC TIẾP &rarr;</a>
						</div>
					</div>
				<?php endwhile; else : ?>
				<p>Đang cập nhật</p>
			<?php endif; ?>
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
	</div>
</section>
<?php get_footer(); ?>