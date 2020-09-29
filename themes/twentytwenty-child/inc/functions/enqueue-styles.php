<?php

add_action('wp_enqueue_scripts', 'pha_enqueue_styles');

function pha_enqueue_styles() {
  // enqueue parent style
  wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css');

  // enqueue chile style
  wp_enqueue_style('child-style', get_stylesheet_uri(), ['bootstrap']);

  // enqueue bootstrap
  wp_enqueue_style('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css');
}
