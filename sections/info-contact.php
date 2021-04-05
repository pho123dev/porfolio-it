<section class="info_contact">
	<div class="bg-info_contact">
		<div class="col-info_contact">
			<div class="_bottom">
				<div class="container-full container">
					<div class="row-grid-2">
						<div class="item-left">
							<div class="form_info_contact">
								<div class="title-from">Thông tin liên hệ</div>
								<ul>
									<li>
										<span><i class="fas fa-map-marker-alt"></i></span>
										<span>Địa chỉ:</span>
										<span><?php the_field('address','option'); ?></span>
									</li>
									<li>
										<span><i class="fas fa-envelope"></i></span>
										<span>Email:</span>
										<span><?php the_field('email','option'); ?></span>
									</li>
									<li>
										<span><i class="fas fa-phone-alt"></i></span>
										<span>Điện thoại</span>
										<span><?php the_field('phone','option'); ?></span>
									</li>
								</ul>
							</div>
						</div>
						<div class="item-right">
							<div class="_image _iframe"><?php the_field('map','option'); ?></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
