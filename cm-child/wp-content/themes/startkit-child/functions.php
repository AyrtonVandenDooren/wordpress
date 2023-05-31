<?php

function skc_theme_enqueue_styles() {  
    $theme = wp_get_theme();
    wp_enqueue_style( 'parent-style' , get_template_directory_uri() . '/style.css', [], $theme->parent()->get('Version'));
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri() . '/css/screen.css', ['parent-style','bootstrap-min','meanmenu-min','font-awesome','animate','startkit-widget','startkit-color-default','startkit-wp-test','startkit-menu','startkit-style','startkit-responsive','startkit-gutenberg','startkit-fonts'], $theme->get('Version')); // this only works if you have Version in the style header

}

add_action( 'wp_enqueue_scripts', 'skc_theme_enqueue_styles' );

?>