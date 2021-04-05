<footer id="footer" class="site-footer" role="contentinfo">
	<div id="footer-area" class="footer-area-5"> 
		<div class="footer-main">
			<div class="container">
				<div class="row-grid-3">
					<div class="_item_footer">
						<div class="title-footer"><h3>Team IT _ Thiết kế Website</h3></div>
						<ul>
							<li><span>Mã số thuế:</span> <?php the_field('ma_so_thue','option'); ?></li>
							<li><span>Điện Thoại:</span> <?php the_field('phone','option'); ?></li>
							<li><span>Email:</span> <?php the_field('email','option'); ?></li>
							<li><span>Địa chỉ:</span><?php the_field('address','option'); ?></li>
						</ul>
					</div>
					<div class="_item_footer">
						<div class="title-footer boder-footer"><h3>VỀ TEAM IT</h3></div>
						<?php get_menu_custom('menu_footer','menu_footer','menu_footer'); ?>
						<div class="title-footer boder-footer"><h3>KẾT NỐI VỚI CHÚNG TÔI</h3></div>
						<?php if (have_rows('social','option')) {
							the_row();
							$zalo_icon = get_sub_field('zalo_icon');
							?>
							<div class="social">
								<ul>
									<li><a href="<?php the_field('facebook','option'); ?>"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="<?php the_field('zalo','option'); ?>"><img src="<?php echo $zalo_icon['url']; ?>" alt="image"></a></li>
									<li><a href="<?php the_field('youtube','option'); ?>"><i class="fab fa-youtube"></i></a></li>
								</ul>
							</div>
							<?php
						} ?>
					</div>
					<div class="_item_footer">
						<div class="title-footer"><h3>ĐĂNG KÍ NHẬN TIN</h3></div>
						<div class="FromNews">
							<form class="ClassFrom" name="NameFormNews" id="IdFormNews" action="#" method="post">
								<input type="text" name="usernameNews" placeholder="Họ Và Tên:" required="">
								<input type="email" name="mailNews" placeholder="Mail:" required="">
								<input class="btn-form _btn" id="IdSubmitNews" type="submit" name="NameSubmitNews" value="Gửi ngay">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<?php do_action( 'pho_after_footer' ); ?>
<!-- <div class="m-backtotop" aria-hidden="true">
	<div class="text">
		<span class=" iconmoon-house relative" id="btn-vibrate"></span><span><img src="<?php //echo THEME_URL_IMG ?>backtoptop.png"></span>
	</div>
</div> -->
<?php wp_footer(); ?>
</body>
</html>