<?php get_header();?>

<main class="o-page__content">
  <h2>Aandachtstrekkers</h2>
  <div class="o-catalogus">
  <?php
      $posts = get_posts();
      foreach($posts as $post){
      echo '
      <div class="o-catalogus__item">
        <div class="c-mini-product">
          <div class="c-mini-product__image">
            <img src="'.get_the_post_thumbnail_url($post->ID) .'" alt=""  class="c-mini-product__symbol" />
          </div>
          <div class="c-mini-product__name">
            <a href="'.get_permalink() .'" class="c-mini-product__link">'. $post->post_title . '</a>
          </div>
          <div class="c-mini-product__price">
            <div class="c-price c-price--old">750</div>
            <div class="c-price">600</div>
          </div>
        </div>
      </div>';
      }
    ?>
  </div>
</main>

<?php get_footer();