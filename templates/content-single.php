<div <?php post_class(); ?> id="post-<?php the_ID(); ?>">
    <div class="bg-page">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-xs-12">
                    <div id="main" class="main-single clearfix" role="main">
                        <?php if ( have_posts() ) : ?>
                            <?php while ( have_posts() ) : the_post(); ?>
                                <div class="item-blog">
                                    <div class="item-news">
                                        <div class="_img-news">
                                            <a href="<?php the_permalink(); ?>"><img src="<?php getTheFirstImages();?>" alt="<?php getTheFirstImages();?>"></a>
                                        </div>
                                    </div>
                                    <div class="blog-bottom-action">
                                        <div class="blog-action-box">
                                            <ul>
                                                <li><i class="far fa-calendar-alt"></i><?php echo get_the_date("F j, Y");?></li>
                                                <li>
                                                    <a href="#"><i class="far fa-comments"></i></i>10 Comments</a>
                                                </li>
                                                <li><i class="far fa-user"></i><?php the_author(); ?></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <?php the_content(); ?>
                            <?php endwhile; ?>
                            <?php else : ?>
                                <?php get_template_part( 'templates/content', 'none' ); ?>
                            <?php endif; ?>
                            <!-- Other Options -->
                            <div class="post-share-options clearfix">
                                <div class="pull-left">
                                    <p>Tags : </p>
                                    <?php the_tags( ' <div class="tags clearfix">  ','','</div> ' ); ?>                             
                                </div>
                                <div class="pull-right">
                                    <p>Mạng xã hội: </p>
                                    <ul class="social-icon">
                                        <li><a href="https://www.pinterest.com/pin/create/link/?url=<?php the_permalink(); ?>"><span class="fa fa-pinterest"></span></a></li>
                                        <li><a href="https://plus.google.com/share?url=<?php the_permalink(); ?>"><span class="fa fa-google-plus"></span></a></li>
                                        <li><a href="https://twitter.com/home?status=<?php the_permalink(); ?>"><span class="fa fa-twitter"></span></a></li>
                                        <li><a href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>"><span class="fa fa-facebook"></span></a></li>
                                        <li><a href="mailto:enteryouemail@addess.com?url=<?php the_permalink(); ?>"><span class="fa fa-dribbble"></span></a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        <?php //pho_related_post('Bài viết liên quan'); ?>

                        <?php 
                        if ( comments_open() || get_comments_number() ) : 
                            comments_template();  endif; ?>
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <?php get_sidebar(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>