<?php 
// post
function product(){
	?>
	<div class="_item_product">
		<div class="_item_image">
			<a href="<?php the_permalink(); ?>"><img src="<?php getTheFirstImages();?>" alt="image"></a>
		</div>
	</div>
<?php }
function post(){
	?>
	<div class="_item_post">
		<div class="_item_image">
			<a href="<?php the_permalink(); ?>"><img src="<?php getTheFirstImages();?>" alt="image"></a>
		</div>
		<div class="_content">
			<div class="_title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></div>
			<div class="_des"><p><?php excerpt_str(); ?></p></div>
			<div class="_read_mord"><a href="<?php the_permalink(); ?>">Xem thêm..</a></div>
		</div>
	</div>
<?php }
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
				echo post($class);
			}
		}
	}
}
function pho_related_post($data){
	?>
	<div class="pho_related_post">
		<h3><?php echo $data; ?></h3>
		<div class="related_post">
			<?php loop_single_related_post(2,''); ?>
		</div>
	</div>
<?php }