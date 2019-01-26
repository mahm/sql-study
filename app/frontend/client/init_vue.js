import Vue from 'vue'
import App from 'application/components/App'

export default function() {
  // Use plugin
  // Vue.use(VueRouter)

  document.addEventListener('DOMContentLoaded', () => {
    const el = document.querySelector('#vue-app')

    Vue.component('App', App)

    /* eslint-disable no-new */
    new Vue({ el })
  })
}
