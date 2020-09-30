import { isMobile, appData } from '../../util'

const { mainCarusel, thumbsCarusel } = appData
let { transitionTimeOut } = appData

export const thumbClickHandler = () => {
  if (!mainCarusel) return

  thumbsCarusel.on('click', () => {
    if (isMobile()) return

    if (!mainCarusel.autoplay.running) {
      thumbsCarusel.clickedSlide.querySelector('.thumbs-carusel__progress-bar').style.width = '0px'
    }
    clearTimeout(transitionTimeOut)
  })
}

export const playBtnHandler = () => {
  if (isMobile()) return

  const btn = document.querySelector('#carusel-play')
  if (!btn) return

  btnOutlineHandler(btn)

  btn.addEventListener('click', (e) => {
    btnIconsHandler(btn)

    // bar elements
    const activeThumbProgress = thumbsCarusel.el.querySelector(
      '.swiper-slide-thumb-active .thumbs-carusel__progress-bar'
    )
    const activeThumb = thumbsCarusel.el.querySelector('.swiper-slide-thumb-active')

    // calculate new transition
    const newTransition = calculateNewTransition(activeThumbProgress, activeThumb)

    // handle play and pause
    if (mainCarusel.autoplay.running) {
      mainCarusel.autoplay.stop()
      activeThumbProgress.style.width = `${activeThumbProgress.clientWidth}px`
      activeThumbProgress.style.transition = `width ${newTransition}ms linear`
      if (transitionTimeOut) clearTimeout(transitionTimeOut)
    } else {
      mainCarusel.autoplay.start()
      activeThumbProgress.style.width = activeThumb.clientWidth + 'px'
      if (transitionTimeOut) clearTimeout(transitionTimeOut)
      transitionTimeOut = setTimeout(() => {
        mainCarusel.slideNext()
      }, newTransition)
    }
  })
}

/**
 * Swiper event
 */
export const slideChangeHandler = () => {
  if (!mainCarusel) return

  mainCarusel.on('slideChange', function () {
    // remove prev slide progress bar
    const progressBarToReset = document.querySelectorAll(
      '.thumbs-carusel__progress-bar:not(.swiper-slide-thumb-active )'
    )
    progressBarToReset.forEach((el) => {
      el.style.removeProperty('width')
      el.style.removeProperty('transition')
    })
  })
}

/**
 * internal helpers
 */
const btnIconsHandler = (btn) => {
  Array.prototype.forEach.call(btn.children, (icon) => {
    icon.classList.toggle('fa--active')
  })
}

const calculateNewTransition = (activeThumbProgress, activeThumb) => {
  const fullElWidth = activeThumb.clientWidth
  const progressBarWidth = activeThumbProgress.clientWidth
  const newTransition = (1 - progressBarWidth / fullElWidth) * 5000

  return newTransition
}

const btnOutlineHandler = (btn) => {
  document.addEventListener('click', (e) => {
    if (e.target !== btn && e.target.parentElement !== btn) btn.blur()
  })
}
