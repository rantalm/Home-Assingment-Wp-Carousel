<?php

function wpdocs_create_book_taxonomies() {
  // Add new taxonomy, make it hierarchical (like categories)
  $labels = array(
    'name'              => __('Genres', 'taxonomy general name'),
    'singular_name'     => __('Genre', 'taxonomy singular name'),
    'search_items'      => __('Search Genres', 'textdomain'),
    'all_items'         => __('All Genres', 'textdomain'),
    'parent_item'       => __('Parent Genre', 'textdomain'),
    'parent_item_colon' => __('Parent Genre:', 'textdomain'),
    'edit_item'         => __('Edit Genre', 'textdomain'),
    'update_item'       => __('Update Genre', 'textdomain'),
    'add_new_item'      => __('Add New Genre', 'textdomain'),
    'new_item_name'     => __('New Genre Name', 'textdomain'),
    'menu_name'         => __('Genre', 'textdomain'),
  );

  $args = array(
    'hierarchical'      => true,
    'labels'            => $labels,
    'show_ui'           => true,
    'show_admin_column' => true,
    'query_var'         => true,
    'rewrite'           => array('slug' => 'genre'),
  );

  register_taxonomy('genre', array('book'), $args);
}
