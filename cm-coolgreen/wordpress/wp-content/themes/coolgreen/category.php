<?php get_header() ?>

      <main class="o-page__content">

       <?php 
       $cat = get_queried_object();
        // echo '<pre>';
        // print_r( $cat);
        // echo '</pre>';
        echo '<h2>'. $cat->name.'</h2>';
        echo '      <div class="o-catalogus">';
        $args = array( 'category' => $cat->cat_ID, 'post_type' =>  'post' ); 
        $posts = get_posts($args);
        foreach($posts as $post){
            echo '          <div class="o-catalogus__item">
            <div class="c-mini-product">
              <div class="c-mini-product__image">
                <img
                  src="'. get_the_post_thumbnail_url($post->ID) .'"
                  alt=""
                  class="c-mini-product__symbol"
                />
              </div>
              <div class="c-mini-product__name">
                <a href="'.get_permalink().'" class="c-mini-product__link">'. $post->post_title .'</a>
              </div>
              <div class="c-mini-product__price">
                <div class="c-price c-price--old">????</div>
                <div class="c-price">????</div>
              </div>
            </div>
          </div>';
        }
        ?>
        <div class="o-catalogus">

            </div>
        </div>
      </main>

<?php get_footer() ?>
