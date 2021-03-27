<footer id="footer" class="site-footer" role="contentinfo">
	<div id="footer-area" class="footer-area-5"> 
		<div class="footer-main">
			<div class="container">
				<div class="row-grid-3">
					<div class="_item_footer">
						<div class="title-footer"><h3>Team IT _ Thiết kế Website</h3></div>
						<ul>
							<li><span>Mã số thuế:</span> 5801358357</li>
							<li><span>Điện Thoại:</span> 1900 66 89</li>
							<li><span>Email:</span> temit@gmail.com</li>
							<li><span>Địa chỉ:</span>366 Phan Văn Trị, Phường 5, TP. Hồ Chí Minh</li>
						</ul>
					</div>
					<div class="_item_footer">
						<div class="title-footer boder-footer"><h3>VỀ TEAM IT</h3></div>
						<?php get_menu_custom('menu_footer','menu_footer','menu_footer'); ?>
						<div class="title-footer boder-footer"><h3>KẾT NỐI VỚI CHÚNG TÔI</h3></div>
						<div class="social">
							<ul>
								<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
								<li><a href=""><img src="./wp-content/themes/theme-porfolio/assets/images/Layer171.png" alt="image"></a></li>
								<li><a href="#"><i class="fab fa-youtube"></i></a></li>
							</ul>
						</div>
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
<div class="m-backtotop" aria-hidden="true">
	<div class="text">
		<span class=" iconmoon-house relative" id="btn-vibrate"></span><span><img src="<?php echo THEME_URL_IMG ?>backtoptop.png"></span>
	</div>
</div>
<?php wp_footer(); ?>
</body>
</html>