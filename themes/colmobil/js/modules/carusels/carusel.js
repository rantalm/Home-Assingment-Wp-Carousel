// create carusels instance and populate appData
import './init'
import { slideChangeHandler, playBtnHandler, thumbClickHandler } from './carusel-util'

const carusels = () => {
  playBtnHandler()
  thumbClickHandler()
  slideChangeHandler()
}

export default carusels
