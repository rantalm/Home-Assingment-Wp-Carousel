<?php
// query models details

$models = [];
$args = array(
  'post_type' => 'models',
  'post_status' => 'publish',
  'posts_per_page' => -1,
);

$models_query = new WP_Query($args);

while ($models_query->have_posts()) : $models_query->the_post();
  $model_data = [
    'id' => get_the_ID(),
    'title' => get_the_title(),
    'excerpt' => get_the_excerpt(),
    'img' => get_the_post_thumbnail_url(get_the_ID(), 'full'),
    'thumbnail' => get_the_post_thumbnail_url(get_the_ID(), 'medium_large'),
    'content_left' => get_field('model_slider_left', get_the_ID()),
    'url' => get_permalink(),
    'content_left' => get_field('model_slider_left')
  ];

  array_push($models, $model_data);

endwhile;

wp_reset_postdata();
?>

<?php if (!empty($models)) : ?>
  <!-- Slider main container -->
  <section>
    <div class="swiper-container carusel main-carusel" id="main-carusel">
      <!-- Additional required wrapper -->
      <div class="swiper-wrapper">
        <!-- Slides -->
        <?php foreach ($models as $model) : ?>
          <div class="swiper-slide">
            <div class="main-carusel__img" style="background-image: url(<?= wp_is_mobile() ? $model['thumbnail'] :  $model['img']; ?>)"></div>
            <div class="main-carusel__container <?= $model['content_left'] ? 'main-carusel__container--left' : ''; ?>">
              <h2 class="color-brown main-carusel__title"><?= $model['title']; ?></h2>
              <p class="description"><?= $model['excerpt']; ?></p>
              <a href="<?= $model['url']; ?>">קרא עוד</a> <span class="color-brown">></span>
            </div>
          </div>
        <?php endforeach; //end main carusel slides 
        ?>
      </div>
    </div>
    <div class="carusel thumbs-carusel__container">
      <div class="swiper-container thumbs-carusel gallery-thumbs">
        <div class="swiper-wrapper">
          <?php foreach ($models as $model) : ?>
            <div class="swiper-slide thumbs-carusel__slide"><span class="thumbs-carusel__bar thumbs-carusel__progress-bar"></span><span class="thumbs-carusel__bar"></span><?= $model['title'] ?></div>
          <?php endforeach; //end main carusel slides 
          ?>

        </div>
      </div>
    </div>
    <div class="carusel-play" id="carusel-play" tabindex="0">
      <i class="fa fa-play"></i>
      <i class="fa fa-pause fa--active"></i></div>
  </section>


<?php endif; ?>