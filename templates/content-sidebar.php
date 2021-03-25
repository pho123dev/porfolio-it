<?php $page_id = get_option('page_on_front'); ?>
<aside class="sidebar default-sidebarcustom-sidebar">
	<div class="widget widget_search">
		<?php search_button(); ?>
	</div>
	<div class="widget widget_cetagories widget_border">
		<div class="widget-title">
			<h3>Chuyên mục</h3>
		</div>
		<div class="widget-categories">
			<?php list_category_count(); ?>
		</div>
	</div>
	<div class="widget widget_popular_post widget_border">
		<div class="widget-title">
			<h3>Bài viết mới nhất</h3>
		</div>
		<div class="widget-content list-post">
		<?php echo do_shortcode( '[list-posts type="post" posts="3" category="" offset="" select="bar"]' ); ?>
	</div>
	</div>
</aside>