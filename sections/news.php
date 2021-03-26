<section class="news">
	<div class="bg-news">
		<div class="container">
			<div class="col-news">
				<div class="_top">
					<div class="row-grid-2">
						<div class="_left">
							<?php title_section_arr(array(
								'title'	=> 	'Tin tức',
								'sub_title'	=> 	'TEAM IT',
							)); ?>
						</div>	
						<div class="_right"></div>	
					</div>
				</div>
				<div class="_bottom">
					<div class="row-grid-2">
						<div class="item-left">
							<div class="list_news">
								<?php echo do_shortcode( '[list-posts type="post" posts="1" taxonomy="category" terms="tin-tuc" offset="" select=""]' ); ?>
							</div>
						</div>
						<div class="item-right">
							<div class="list_news">
								<?php echo do_shortcode( '[list-posts type="post" posts="3" taxonomy="category" terms="tin-tuc" offset="1" select=""]' ); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>