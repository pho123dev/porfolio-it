<section class="product about">
	<div class="bg-product">
		<?php style_before('bg-product','./wp-content/themes/theme-porfolio/assets/images/Untitled-1.jpg') ?>
		<div class="container">
			<div class="col-product">
				<div class="row-grid-2">
					<div class="item-left">
						<div class="item-product">
							
						</div>
					</div>
					<div class="item-right">
						<div class="item-product item-about">
							<div class="_bottom">
								<?php title_section_arr(array(
									'title'	=> 	'Sản phẩm',
									'sub_title'	=> 	'TEAM IT',
								)); ?>
								<div class="_content">
									<p>Một số sản phẩm về các dự án gần đây do chúng tôi làm. Chúng tôi đã thực hiện tất cả chúng cùng với những người tuyệt vời từ các công ty trên toàn cầu.</p>
									<p>Nó chỉ là một trong số toàn bộ danh sách mà thôi.</p>
									<div class="_btn"><a href="/san-pham">Xem thêm sản phẩm khác</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="list_product row-grid-5">
		<?php echo do_shortcode( '[list-posts type="san-pham" posts="10" taxonomy="san-pham-cat" terms="san-pham" offset="" select=""]' ); ?>
	</div>
</section>