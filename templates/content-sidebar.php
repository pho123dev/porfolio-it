<?php $page_id = get_option('page_on_front'); ?>
<aside class="sidebar default-sidebarcustom-sidebar">
	<div class="widget widget_search">
		<?php search_button(); ?>
	</div>
	<div class="widget widget_popular_post widget_border">
		<div class="widget-title">
			<h3>tin tức nổi bật</h3>
		</div>
		<div class="widget-content list-post">
			<?php echo do_shortcode( '[list-posts type="post" posts="2" category="" offset="" select="bar"]' ); ?>
		</div>
	</div>
	<?php if(has_tag()) { ?>
		<div class="key-word">
			<div class="widget-title">
				<h3>Từ khóa</h3>
			</div>
			<?php the_tags( ' <div class="tags">  ','','</div> ' ); ?>
		</div>
	<?php } ?>
</aside>