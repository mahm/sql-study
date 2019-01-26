import Rails from 'rails-ujs'
import fontawesome from '@fortawesome/fontawesome'
import faSolid from '@fortawesome/fontawesome-free-solid'
import faRegular from '@fortawesome/fontawesome-free-regular'
import faBrands from '@fortawesome/fontawesome-free-brands'
import Toastify from 'toastify-js'
import 'babel-polyfill'

import initVue from './init_vue'

export default function() {
  window.Toastify = Toastify
  fontawesome.library.add(faSolid, faRegular, faBrands)
  fontawesome.dom.i2svg()

  Rails.start()
  initVue()
}
