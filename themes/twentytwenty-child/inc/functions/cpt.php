<?php
function create_posttype() {

  register_post_type(
    'products',
    // CPT Options
    array(
      'labels' => array(
        'name' => __('מוצרים'),
        'singular_name' => __('מוצר'),
        'add_new' => __('הוסף מוצר')
      ),
      'public' => true,
      'has_archive' => true,
      'rewrite' => array('slug' => 'מוצרים'),
      'show_in_rest' => true,

    )
  );
}
add_action('init', 'create_posttype');
