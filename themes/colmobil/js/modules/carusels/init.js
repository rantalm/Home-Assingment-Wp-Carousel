import Swiper from 'swiper/bundle'

import { isMobile } from '../../util'
import { appData } from '../../util'

const initCarusels = () => {
  if (!document.querySelector('.main-carusel')) return
  // initiate thumbnails carusel
  appData.thumbsCarusel = new Swiper('.thumbs-carusel', {
    slidesPerView: isMobile() ? 'auto' : 4,
    spaceBetween: 0,
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
    freeMode: true,
    disableOnInteraction: false,
    autoplay: isMobile
      ? false
      : {
          disableOnInteraction: false,
        },
  })

  // initiate main carusel
  appData.mainCarusel = new Swiper('.main-carusel', {
    spaceBetween: 0,
    loop: true,
    effect: 'fade',
    thumbs: {
      swiper: appData.thumbsCarusel,
    },
    autoplay: isMobile()
      ? false
      : {
          delay: 5000,
          disableOnInteraction: false,
        },
  })
}

initCarusels()
