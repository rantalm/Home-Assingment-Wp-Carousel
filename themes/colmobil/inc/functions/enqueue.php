<?php

function colmibil_enqueue_files() {
  wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css2?family=Rubik:wght@300;500;600&display=swap');
  wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

  if (strstr($_SERVER['SERVER_NAME'], 'colmobil-test.local')) {
    wp_enqueue_script('main-js', 'http://localhost:3000/bundled.js', NULL, '1.0', true);
  } else {
    wp_enqueue_script('vendors-js', get_theme_file_uri('/bundled-assets/vendors~scripts.10e28aae46196ff77990.js'), NULL, '1.0', true);
    wp_enqueue_script('main-js', get_theme_file_uri('/bundled-assets/scripts.a01c000347c2d980d44a.js'), NULL, '1.0', true);
    wp_enqueue_style('main-styles', get_theme_file_uri('/bundled-assets/styles.a01c000347c2d980d44a.css'));
  }
}

add_action('wp_enqueue_scripts', 'colmibil_enqueue_files');
