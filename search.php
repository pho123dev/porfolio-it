<?php get_header(); ?>
<section class="about about-page ky-nang-page">
  <div class="bg-about">
    <div class="container">
      <div class="col-about">
        <div class="row-grid-2">
          <div class="item-left">
            <div class="item-about">
              <div class="_number">05</div>
              <div class="_title"><div class="_rotate">Tin tức</div></div>
            </div>
          </div>
          <div class="item-right">
            <div class="item-about top">
              <div class="_bottom">
                <?php title_section_arr(array(
                  'title' =>  'Tin tức',
                  'sub_title' =>  'TEAM IT',
                )); ?>
                <div class="_content">
                  <p>Một số sản phẩm về các dự án gần đây do chúng tôi làm. Chúng tôi đã thực hiện
                  tất cả chúng cùng với những người tuyệt vời từ các công ty trên toàn cầu.</p>
                  <p>Nó chỉ là một trong số toàn bộ danh sách mà thôi.</p>
                  <p>Nếu muốn biết thêm chi tiết hãy <a href="/lien-he">liên hệ</a> với chúng tôi</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="news-category">
  <div class="container">
    <div class="list_post row-grid-3">
      <?php echo do_shortcode( '[list-posts type="post" posts="" taxonomy="" terms="" offset="" select=""]' ); ?>
    </div>
  </div>
</section>
<?php get_footer(); ?>