<?php
/**
 * template name: Giới thiệu
 */
get_header();
?>
<?php
if( have_rows('about') ){
	while( have_rows('about') ){ the_row();
		$top = get_sub_field('top');
		$bottom = get_sub_field('bottom');
		$title = get_sub_field('title');
		?>
		<section class="about about-page">
			<div class="bg-about">
				<div class="container">
					<div class="col-about">
						<div class="row-grid-2">
							<div class="item-left">
								<div class="item-about">
									<div class="_number">02</div>
									<div class="_title"><div class="_rotate"><?php echo $title; ?></div></div>
								</div>
							</div>
							<div class="item-right">
								<div class="item-about top">
									<div class="_bottom">
										<?php title_section_arr(array(
											'title'	=> 	$top['title'],
											'sub_title'	=> 	$top['sub_title'],
										)); ?>
										<div class="_content">
											<div class="LineGraph">
												<canvas id="myChart"></canvas>
											</div>
											<p><div class="_sub_title"><?php echo $top['content']; ?></div></p>
										</div>
									</div>
								</div>
								<div class="item-about bottom">
									<div class="_bottom">
										<?php title_section_arr(array(
											'title'	=> 	$bottom['title'],
											'sub_title'	=> 	$bottom['sub_title'],
										)); ?>
										<div class="_content">
											<?php echo $bottom['content']; ?>
										</div>
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
}  
} ?>
<?php if (have_rows('number')) {
	the_row();
	?>
	<section class="number">
		<div class="bg-number">
			<div class="container">
				<div class="col-number">
					<div class="_top">
						<?php title_section_arr(array(
							'title'	=> 	'Đội ngũ của chúng tôi',
							'sub_title'	=> 	'CHÚNG TÔI CHUYÊN NGHIỆP',
						)); ?>
					</div>
					<div class="_bottom">
						<div class="slider-number <?php class_slide(3); ?>">
							<?php if (have_rows('list_number')) {
								while (have_rows('list_number')) {
									the_row();
									$image = get_sub_field('image');
									$title = get_sub_field('title');
									$position = get_sub_field('position');
									$link = get_sub_field('link');
									number($image,$title,$position);
								}
							} ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php
} ?>
<?php get_footer();?>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>
	var ctx = document.getElementById('myChart').getContext('2d');
	var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
    	labels: ['2013','2014', '2015','2016','2017', '2019','2020', '2021'],
    	datasets: [{
    		label: 'Dự án',
    		backgroundColor: '#282828',
    		borderColor: '#f16b4e',
    		data: [0, 70, 130, 160, 200, 210, 220, 250]
    	}]
    },

    // Configuration options go here
    options: {}
});
</script>