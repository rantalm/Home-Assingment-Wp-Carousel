/**
 * @param {Swiper} mainCarusel
 * @param {Swiper} thumbsCarusel
 */
export const handleThumbClik = (mainCarusel, thumbsCarusel) => {
  thumbsCarusel.on('click', () => {
    if (!mainCarusel.autoplay.running) {
      thumbsCarusel.clickedSlide.querySelector('.thumbs-carusel__progress-bar').style.width = '0px'
    }
    console.log('ckliked', thumbsCarusel.clickedSlide)
  })
}

/**
 * @param {Swiper} mainCarusel
 * @param {Swiper} thumbsCarusel
 */

export const playBtnHandler = (mainCarusel, thumbsCarusel) => {
  const btn = document.querySelector('#carusel-play')
  let to
  btn.addEventListener('click', (e) => {
    Array.prototype.forEach.call(btn.children, (icon) => {
      icon.classList.toggle('fa--active')
    })
    // elements
    const activeThumbProgress = thumbsCarusel.el.querySelector(
      '.swiper-slide-thumb-active .thumbs-carusel__progress-bar'
    )
    const activeThumb = thumbsCarusel.el.querySelector('.swiper-slide-thumb-active')

    // calculate and inject new transition
    const fullElWidth = activeThumb.clientWidth
    const progressBarWidth = activeThumbProgress.clientWidth
    const newTransition = (1 - progressBarWidth / fullElWidth) * 3000

    // handle play and pause
    if (mainCarusel.autoplay.running) {
      mainCarusel.autoplay.stop()
      activeThumbProgress.style.width = `${activeThumbProgress.clientWidth}px`

      activeThumbProgress.style.transition = `width ${newTransition}ms linear`
      console.log('new transition :: ', newTransition)
      if (to !== undefined) clearTimeout(to)

      // slide to next when transition end
    } else {
      mainCarusel.autoplay.start()
      activeThumbProgress.style.width = activeThumb.clientWidth + 'px'
      if (to !== undefined) clearTimeout(to)
      to = setTimeout(() => {
        mainCarusel.slideNext()
        console.log('next')
      }, newTransition)
    }
  })
}
