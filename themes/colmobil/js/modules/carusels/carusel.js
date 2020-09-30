/**
 *  create carusels instances and populate appData
 * */
import './init'
import { slideChangeHandler, playBtnHandler, thumbClickHandler } from './carusel-util'

/**
 *  used in scripts.js
 *  inner functions depends on appData, so init file must run first
 */
const carusels = () => {
  playBtnHandler()
  thumbClickHandler()
  slideChangeHandler()
}

export default carusels
