<?php 
function product(){
	?>
	<div class="_item_product">
		<div class="_item_image zoom">
			<a href="<?php the_permalink(); ?>"><img src="<?php getTheFirstImages();?>" alt="image"></a>
		</div>
		<div class="hover"><a href="<?php the_permalink(); ?>">Xem <br>sản phẩm</a></div>
	</div>
<?php }
function post(){
	?>
	<div class="_item_post">
		<div class="_item_image">
			<a class="zoom" href="<?php the_permalink(); ?>"><img src="<?php getTheFirstImages();?>" alt="image"></a>
		</div>
		<div class="_content">
			<div class="_title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></div>
			<div class="_des"><p><?php excerpt_str(); ?></p></div>
			<div class="_read_mord"><a href="<?php the_permalink(); ?>">Xem thêm..</a></div>
		</div>
	</div>
<?php }
function post_bar(){
	?>
	<div class="bar item-news row-grid-2">
		<div class="image">
			<a href="<?php the_permalink(); ?>">
				<img src="<?php getTheFirstImages();?>" alt="<?php the_post_thumbnail_url();?>">
			</a>
		</div>
		<div class="content">
			<div class="title"><h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4></div>
			<div class="meta">
				<span class="date"><?php echo get_the_date("F j, Y");?></span> 
			</div>
		</div>
	</div>
<?php }
function number($image,$title,$position){
	?>
	<div class="item">
		<div class="image">
			<a href=""><img src="<?php echo $image['url']; ?>" alt=""></a>
			<div class="hover">
				<div class="social">
					<ul>
						<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
						<li><a href=""><img src="http://localhost/porfolio/wp-content/uploads/2021/03/Layer171.png" alt="image"></a></li>
						<li><a href=""><i class="fab fa-youtube"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="title"><h4><a href=""><?php echo $title; ?></a></h4></div>
		<div class="position"><?php echo $position; ?></div>
	</div>
	<?php
}
// loop
function category_posts($class) {
	if (have_posts()) :
		while (have_posts()) : the_post();
			echo post($class);
		endwhile; else :
	endif;
}
function loop_post($sl,$class){
	$args = array( 
		'post_type' => 'post',
		'posts_per_page' => $sl
	);
	$loop = new WP_Query( $args );
	while ($loop->have_posts()) { $loop->the_post();
		echo post($class);
	}
}
function loop_post_customize($posts,$category){
	$args = array( 
		'post_type' => 'post',
		'posts_per_page' => $posts,
		'tax_query'             => array(
			array(
				'taxonomy'  => 'category',
				'field'     => 'slug',
				'terms'     => $category,
			)
		) 
	);
	$loop = new WP_Query( $args );
	while ($loop->have_posts()) { $loop->the_post();
		echo post();
	}
}
function loop_single_related_post($sl,$class) {
	global $post;
	$categories = get_the_category($post->ID);
	if ($categories) {
		$category_ids = array();
		foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;
		$args=array(
			'category__in' => $category_ids,
			'post__not_in' => array($post->ID),
			'showposts'=>$sl,
			'ignore_sticky_posts'=>1
		);
		$my_query = new wp_query($args);
		if( $my_query->have_posts() ) { 
			while ($my_query->have_posts()) { $my_query->the_post();
				echo post();
			}
		}
	}
}
