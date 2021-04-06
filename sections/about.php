<?php
if( have_rows('about') ){
	while( have_rows('about') ){ the_row();
		$top = get_sub_field('top');
		$bottom = get_sub_field('bottom');
		$title = get_sub_field('title');
		?>
		<section class="about">
			<div class="bg-about">
				<div class="container">
					<div class="col-about">
						<div class="row-grid-2">
							<div class="item-left">
								<div class="item-about">
									<div class="_number slide-in-left-l1">01</div>
									<div class="_title"><div class="_rotate"><?php echo $title; ?></div></div>
								</div>
							</div>
							<div class="item-right">
								<div class="item-about">
									<div class="_top">
										<div class="_title">
											<div class="_text_1 orbs">
												<ul>
													<li class="slide-in-top-05">X</li>
													<li class="slide-in-top-07">i</li>
													<li class="slide-in-top-09">n</li>
													<li>&nbsp;</li>
													<li class="slide-in-top-11">c</li>
													<li class="slide-in-top-13">h</li>
													<li class="slide-in-top-15">à</li>
													<li class="slide-in-top-17">o</li>
													<li class="slide-in-top-19">,</li>
												</ul>
											</div>
											<?php $str = $top['title']; ?>
											<?php $char_list = explode(' ', $str); ?>
											<div class="_text_2">
												<?php $i=0; foreach ($char_list as $item) { $i++;?>
													<span class="item item-<?php echo $i; ?>"><?php echo $item; ?></span>
												<?php } ?>
											</div>
										</div>
										<div class="_sub_title slide-in-right"><?php echo $top['sub_title']; ?></div>
										<div class="_btn"><a href="<?php echo $top['button_link']; ?>"><?php echo $top['button_text']; ?></a></div>
									</div>
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
		</section>
		<?php
	}  
} ?>