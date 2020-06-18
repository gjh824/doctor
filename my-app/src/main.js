import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import VueAwesomeSwiper from 'vue-awesome-swiper'
import axios from 'axios'

import 'swiper/css/swiper.css'
 
Vue.use(VueAwesomeSwiper)
Vue.prototype.HOST='http://localhost:3000/doctor'
Vue.prototype.$axios=axios

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
