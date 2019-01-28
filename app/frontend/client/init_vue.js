import Vue from 'vue'
import App from 'application/components/App'
import AboutSite from 'application/components/AboutSite'
import AboutSchema from 'application/components/AboutSchema'
import Buefy from 'buefy'
// import 'buefy/lib/buefy.css'

export default function() {
  // Use plugin
  // Vue.use(VueRouter)

  document.addEventListener('DOMContentLoaded', () => {
    const el = document.querySelector('#vue-app')

    Vue.use(Buefy)
    Vue.component('App', App)
    Vue.component('AboutSite', AboutSite)
    Vue.component('AboutSchema', AboutSchema)

    /* eslint-disable no-new */
    new Vue({ el })
  })
}
