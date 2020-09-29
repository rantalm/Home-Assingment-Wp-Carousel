import Swiper from 'swiper/bundle'

import { handleThumbClik, playBtnHandler } from './carusel-util'

const initCarusels = () => {
  // initiate thumbnails carusel
  const thumbsCarusel = new Swiper('.thumbs-carusel', {
    slidesPerView: 4,
    //loopedSlides: 3,
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
    freeMode: true,
    disableOnInteraction: false,
    autoplay: {
      disableOnInteraction: false,
    },
    on: {
      init: function () {},
    },
  })

  // initiate main carusel
  const mainCarusel = new Swiper('.main-carusel', {
    spaceBetween: 10,
    loop: true,
    effect: 'fade',
    thumbs: {
      swiper: thumbsCarusel,
    },
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
    on: {
      init: function () {},
      slideChange: function () {
        // remove prev slide progress bar
        const progressBarToReset = document.querySelector(
          '.swiper-slide-thumb-active .thumbs-carusel__progress-bar'
        )
        progressBarToReset.style.removeProperty('width')
        progressBarToReset.style.removeProperty('transition')
      },
    },
  })

  playBtnHandler(mainCarusel, thumbsCarusel)
  handleThumbClik(mainCarusel, thumbsCarusel)
}

export default initCarusels
