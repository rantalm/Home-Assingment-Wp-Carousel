/** Styles */
import '../css/style.css'

/** Vendors */
import 'swiper/swiper-bundle.css'

/** My Modules */
import initCarusels from './modules/carusels/carusel'

/**
 *  Code
 */

initCarusels()

// Allow new JS and CSS to load in browser without a traditional page refresh
if (module.hot) {
  module.hot.accept()
}
