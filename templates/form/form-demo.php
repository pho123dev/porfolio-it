<div class="col-form-contact">
	<?php if ( is_page_template('page-templates/home-page.php') ) { ?>
	<div class="_title-form">
		<h3>Tạo một</h3>
		<h2>Cuộc hẹn</h2>
	</div>
	<?php } ?>
	<form class="dt-sc-subscribe-frm" name="frmsubscribe" action="#" method="post">
		<div class="_top">
			<input type="text" name="username" placeholder="Họ tên" required="">
			<input type="email" name="email" placeholder="Email" required="">
		</div>
		<div class="_content">
			<input type="text" name="phone" placeholder="Phone" required="">
			<textarea name="message" placeholder="Nội dung"></textarea>
		</div>
		<div class="_bottom">
			<input class="btn_submit" type="submit" name="mc_submit" value="Gửi đi">
		</div>
	</form>
</div>