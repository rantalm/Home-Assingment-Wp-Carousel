/** Styles */
import '../css/style.css'
/** Vendors Styles */
import 'swiper/swiper-bundle.css'

// used for share app state in a few cases

/** My Modules */
import carusels from './modules/carusels/carusel'

/**
 *  Code
 */

carusels()

// Allow new JS and CSS to load in browser without a traditional page refresh
if (module.hot) {
  module.hot.accept()
}
