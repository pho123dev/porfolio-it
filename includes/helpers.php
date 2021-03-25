<?php
function page_id(){
    global $wp_query;
    echo $wp_query->post->ID;
}
// print mảng
function show_array($data) {
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}
//  hàm menu
function get_menu_custom($theme_location,$menu_id,$menu_class){
    wp_nav_menu( array( 
        'theme_location'  => $theme_location,
        'menu_id' => $menu_id,
        'menu_class' => $menu_class,
    ) );
}
function excerpt_str(){
    $str = wp_trim_words(get_the_excerpt(), 24, '' );
    $str = str_replace('[hlight]','', $str);
    if(!empty($str)){
        echo $str;
    }
    else {
        echo "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,";
    }
}
function catch_that_image() {
  global $post, $posts;
  $first_img = '';
  ob_start();
  ob_end_clean();
  $output = preg_match_all('/<img.+?src=[\'"]([^\'"]+)[\'"].*?>/i', $post->post_content, $matches);
  $first_img = $matches[1][0];

  if(empty($first_img)) {
    $first_img = "/path/to/default.png";
}
return $first_img;
}
function getTheFirstImages(){
    if ( has_post_thumbnail() ) { the_post_thumbnail_url();}else{ echo catch_that_image();}
}
function check_mobile() {
    $is_mobile = '0';
    if(preg_match('/(android|iphone|ipad|up.browser|up.link|mmp|symbian|smartphone|midp|wap|phone)/i', strtolower($_SERVER['HTTP_USER_AGENT'])))
        $is_mobile=1;
    if((strpos(strtolower($_SERVER['HTTP_ACCEPT']),'application/vnd.wap.xhtml+xml')>0) or ((isset($_SERVER['HTTP_X_WAP_PROFILE']) or isset($_SERVER['HTTP_PROFILE']))))
        $is_mobile=1;
    $mobile_ua = strtolower(substr($_SERVER['HTTP_USER_AGENT'],0,4));
    $mobile_agents = array('w3c ','acs-','alav','alca','amoi','andr','audi','avan','benq','bird','blac','blaz','brew','cell','cldc','cmd-','dang','doco','eric','hipt','inno','ipaq','java','jigs','kddi','keji','leno','lg-c','lg-d','lg-g','lge-','maui','maxo','midp','mits','mmef','mobi','mot-','moto','mwbp','nec-','newt','noki','oper','palm','pana','pant','phil','play','port','prox','qwap','sage','sams','sany','sch-','sec-','send','seri','sgh-','shar','sie-','siem','smal','smar','sony','sph-','symb','t-mo','teli','tim-','tosh','tsm-','upg1','upsi','vk-v','voda','wap-','wapa','wapi','wapp','wapr','webc','winw','winw','xda','xda-');
    if(in_array($mobile_ua,$mobile_agents))
        $is_mobile=1;
    if (isset($_SERVER['ALL_HTTP'])) {
        if (strpos(strtolower($_SERVER['ALL_HTTP']),'OperaMini')>0)
            $is_mobile=1;
    }
    if (strpos(strtolower($_SERVER['HTTP_USER_AGENT']),'windows')>0)
        $is_mobile=0;
    return $is_mobile;
}

// phân trang
function pagination( $arr, $echo = 1) {
    $arr = shortcode_atts( array( 
        'class_div' => '',
        'class_ul' => '',
        'class_li' => '',
        'prev_text' => '',
        'next_text' => ''
    ), $arr );
    extract($arr);
    global $wp_query;
    if ( $wp_query->max_num_pages <= 1 ) return; 
    $big = 999999999; 
    $pages = paginate_links( array(
        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
        'format' => '?paged=%#%',
        'prev_text'    => __($prev_text),
        'next_text'    => __($next_text),
        'current' => max( 1, get_query_var('paged') ),
        'total' => $wp_query->max_num_pages,
        'type'  => 'array',
    ) );
    if( is_array( $pages ) ) {
        $paged = ( get_query_var('paged') == 0 ) ? 1 : get_query_var('paged');
        echo "<div class='$class_div'><ul class='$class_ul'>";
        foreach ( $pages as $page ) {
            echo "<li class='$class_li'>$page</li>";
        }
        echo '</ul></div>';
    }
    return $echo;
}
/**
 * Breadcrumb
 */
if (!function_exists('pho_breadcrumbs')){
    function pho_breadcrumbs( $delimiter = '&nbsp <i class="fas fa-angle-double-right"></i> &nbsp', $home = '<i class="fa fa-home" aria-hidden="true"></i> Trang chủ', $class = 'woocommerce-breadcrumb' ,$before = '<span class="current-item">', $after = '</span>') {
        if ( !is_home() && !is_front_page() || is_paged() ) {
            echo '<div id="crumbs" class="'.$class.'">';
            global $post;
            $homeLink = get_bloginfo('url');
            echo '<a href="' . $homeLink . '">' . $home . '</a> ' . $delimiter . ' ';
            if ( is_category() ) {
                global $wp_query;
                $cat_obj = $wp_query->get_queried_object();
                $thisCat = $cat_obj->term_id;
                $thisCat = get_category($thisCat);
                $parentCat = get_category($thisCat->parent);
                if ($thisCat->parent != 0) echo(get_category_parents($parentCat, TRUE, ' ' . $delimiter . ' '));
                echo $before . single_cat_title('', false) . $after;
            } elseif (is_post_type_archive('chuoi-co-so')) {
                echo 'Chuỗi cơ sở';
            } elseif (is_archive()) {
                post_type_archive_title();
            } elseif ( is_day() ) {
                echo '<a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a> ' . $delimiter . ' ';
                echo '<a href="' . get_month_link(get_the_time('Y'),get_the_time('m')) . '">' . get_the_time('F') . '</a> ' . $delimiter . ' ';
                echo $before . get_the_time('d') . $after;
            } elseif ( is_month() ) {
                echo '<a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a> ' . $delimiter . ' ';
                echo $before . get_the_time('F') . $after;
            } elseif ( is_year() ) {
                echo $before . get_the_time('Y') . $after;
            } elseif ( is_single() && !is_attachment() ) {
                if ( get_post_type() != 'post' ) {
                    $post_type = get_post_type_object(get_post_type());
                    $slug = $post_type->rewrite;
                    echo '<a href="' . $homeLink . '/' . $slug['slug'] . '/">' . $post_type->labels->singular_name . '</a> ' . $delimiter . ' ';
                    echo $before . get_the_title() . $after;
                } else {
                    $cat = get_the_category(); $cat = $cat[0];
                    echo get_category_parents($cat, TRUE, ' ' . $delimiter . ' ');
                    echo $before . get_the_title() . $after;
                }
            } elseif ( !is_single() && !is_page() && get_post_type() != 'post' && !is_404() ) {
                //$post_type = get_post_type_object(get_post_type());
                //echo $before . $post_type->labels->singular_name . $after;
            } elseif ( is_attachment() ) {
                $parent = get_post($post->post_parent);
                $cat = get_the_category($parent->ID); $cat = $cat[0];
                echo get_category_parents($cat, TRUE, ' ' . $delimiter . ' ');
                echo '<a href="' . get_permalink($parent) . '">' . $parent->post_title . '</a> ' . $delimiter . ' ';
                echo $before . get_the_title() . $after;
            } elseif ( is_page() && !$post->post_parent ) {
                echo $before . get_the_title() . $after;
            } elseif ( is_page() && $post->post_parent ) {
                $parent_id = $post->post_parent;
                $breadcrumbs = array();
                while ($parent_id) {
                    $page = get_page($parent_id);
                    $breadcrumbs[] = '<a href="' . get_permalink($page->ID) . '">' . get_the_title($page->ID) . '</a>';
                    $parent_id = $page->post_parent;
                }
                $breadcrumbs = array_reverse($breadcrumbs);
                foreach ($breadcrumbs as $crumb) echo $crumb . ' ' . $delimiter . ' ';
                echo $before . get_the_title() . $after;
            } elseif ( is_search() ) {
                echo $before . 'Kết quả tìm kiếm <span>"' . get_search_query() . '"</span>' . $after;
            } elseif ( is_tag() ) {
                echo $before . 'tag <span>"' . single_tag_title('', false) . '"</span>' . $after;
            } elseif ( is_author() ) {
                global $author;
                echo $before . 'Articles posted by <span>' . $userdata->display_name .'</span>'. $after;
            } elseif ( is_404() ) {
                echo $before . 'Error 404' . $after;
            }
            if ( get_query_var('paged') ) {
                if ( is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author() ) echo ' (';
                echo __('Page') . ' ' . get_query_var('paged');
                if ( is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author() ) echo ')';
            }
            echo '</div>';
        }
    }
}


