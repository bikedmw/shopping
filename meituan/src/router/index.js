import Vue from 'vue'
import Router from 'vue-router'
import login from '@/components/login.vue'
import home from '@/components/home.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:"/",
      component:home
    },
    {
      path:"/login",
      component:login 
    }
  ]
})
