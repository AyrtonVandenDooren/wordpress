<?php 
    function cg_add_theme_scripts() {
    
    wp_enqueue_style( 'screen', get_template_directory_uri() . '/css/screen.css');
    
    }

    function cg_register_my_menus() {
        register_nav_menus(
          array(
            'header-menu' => 'Hoofd Menu',
            'footer-menu' => 'Voet Menu'
           )
         );
       }
       add_action( 'init', 'cg_register_my_menus' );


    add_action( 'wp_enqueue_scripts', 'cg_add_theme_scripts' );

    add_theme_support( 'post-thumbnails' ); //staat buiten

  //   function get_the_post_thumbnail( $post = null, $size = 'post-thumbnail', $attr = '' ) {
  //     $post = get_post( $post );
   
  //     if ( ! $post ) {
  //         return '';
  //     }
   
  //     $post_thumbnail_id = get_post_thumbnail_id( $post );
   
      
  //     $size = apply_filters( 'post_thumbnail_size', $size, $post->ID );
   
  //     if ( $post_thumbnail_id ) {
   
  //         do_action( 'begin_fetch_post_thumbnail_html', $post->ID, $post_thumbnail_id, $size );
   
  //         if ( in_the_loop() ) {
  //             update_post_thumbnail_cache();
  //         }
   
  //         $html = wp_get_attachment_image( $post_thumbnail_id, $size, false, $attr );
   
  //         do_action( 'end_fetch_post_thumbnail_html', $post->ID, $post_thumbnail_id, $size );
   
  //     } else {
  //         $html = '';
  //     }
   
  //     return apply_filters( 'post_thumbnail_html', $html, $post->ID, $post_thumbnail_id, $size, $attr );
  // }

?>