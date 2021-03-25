<div <?php post_class(); ?> id="post-<?php the_ID(); ?>">
    <div class="bg-page">
        <div class="container">
            <div class="row">
                <div id="main" class="main-single col-sm-12 col-xs-12 col-md-12 clearfix" role="main">
                    <?php if ( have_posts() ) : ?>
                        <?php while ( have_posts() ) : the_post(); ?>
                         <?php the_content(); ?>
                     <?php endwhile; // End the loop. ?>
                     <?php else : ?>
                        <?php get_template_part( 'templates/content', 'none' ); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
