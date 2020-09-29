<?php
function create_posttype() {

  $lables = [
    'name' => __('מודלים'),
    'singular_name' => __('מודל'),
    'add_new' => __('הוסף מודל')
  ];

  $args = [
    'labels' => $lables,
    'public' => true,
    'has_archive' => true,
    'rewrite' => ['slug' => 'דגמים'],
    'supports' => ['title', 'editor', 'author', 'thumbnail', 'excerpt']
  ];

  register_post_type('models', $args);
}
add_action('init', 'create_posttype');
