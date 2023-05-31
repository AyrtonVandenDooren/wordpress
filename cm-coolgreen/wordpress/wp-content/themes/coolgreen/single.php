<?php get_header();?>

<main class="o-page__content">
  <?php
  if(have_posts() ):
    while (have_posts() ) :the_post();
      echo '
    <article class="c-product">
      <div class="c-product__image">
        <img src="'.get_the_post_thumbnail_url(get_the_id()).'" alt="" class="c-product__symbol" />
      </div>
      <div class="c-product__info">
       <h1 class="c-product__title">';
       the_title();
       echo '</h1>
       <div class="c-product__description">';
       the_content();
       echo '</div>
       <div class="c-product__price">
          <div class="c-price c-price--old">???</div>
          <div class="c-price">???</div>
       </div>
      <div>
    </article>';


    endwhile;
  endif;
  ?>
</main>

<?php get_footer();

