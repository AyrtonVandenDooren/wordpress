<?php get_header();?>


<main class="o-page__content">
    <div class="c-header-image">
    <?php
    if (get_the_post_thumbnail_url()){
        //er is EEN uitgelichte afbeelding ingesteld.
        echo '<img src="'.get_the_post_thumbnail_url().'" alt="" class="c-header-image__symbol" height="300px" />';

    }else{
        //er is GEEN uitgelichte afbeelding ingesteld.
        echo '<img src="'.get_template_directory_uri().'/img/pageplaceholder.jpg' .'" alt="" class="c-header-image__symbol" height="200px" />';
        
    }
    ?>
    </div>
    <h1><?php the_title()?></h1>
    <p><?php the_content()?></p>
</main>     

<?php get_footer();