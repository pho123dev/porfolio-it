<?php
/**
 * template name: Giới thiệu
 */
get_header();
?>
<section class="about about-page">
	<div class="bg-about">
		<div class="container">
			<div class="col-about">
				<div class="row-grid-2">
					<div class="item-left">
						<div class="item-about">
							<div class="_number">02</div>
							<div class="_title"><div class="_rotate">GIỚI THIỆU</div></div>
						</div>
					</div>
					<div class="item-right">
						<div class="item-about top">
							<div class="_bottom">
								<?php title_section_arr(array(
									'title'	=> 	'Hành trình phát triển',
									'sub_title'	=> 	'TEAM IT',
								)); ?>
								<div class="_content">
									<p>Với gần 10 năm kinh nghiệm, đã hoàn thành 500 website trên nhiều lĩnh
										vực khác nhau, Team It tự tin đáp ứng toàn bộ nhu cầu của khách hàng,
									có thể tư vấn toàn bộ thông tin, thi công toàn bộ yêu cầu của quý khách.</p>
								</div>
							</div>
						</div>
						<div class="item-about bottom">
							<div class="_bottom">
								<?php title_section_arr(array(
									'title'	=> 	'Các giá  trị',
									'sub_title'	=> 	'CƠ BẢN',
								)); ?>
								<div class="_content">
									<p>Ý tưởng thiết kế được dựa trên yêu cầu, nhu cầu thực tế của khách hàng.</p>
									<p>Mỗi website là một tác phẩm mang tính đặc trưng riêng, không sao
									chép hoặc tái sử dụng lại.</p>
									<p>Trong công việc, tính kỷ luật cao, tác phong chuyên nghiệp
									là giá trị cốt lõi, là truyền thống, là văn hóa của Team It</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
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