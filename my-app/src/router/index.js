import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    children:[
      {
      path:'/ge',
      component: () => import('../views/Ge.vue')
      },
      {
        path:'/jb',
        component: () => import('../views/Jb.vue')
      },
      {
        path:'/jk',
        component: () => import('../views/Jk.vue')
      },
      {
        path:'/yy',
        component: () => import('../views/Yy.vue')
      },
      {
        path:'/zx',
        component: () => import('../views/Zx.vue')
      },
      {
        path:'/',
        component: () => import('../views/Sy.vue'),
        children:[
          {
          path:'/',
          component: () => import('../views/Daoxia.vue'),
          children:[{
            path:'/',
            component: () => import('../views/Ben.vue'),
            children:[{
              path:'/',
              component: () => import('../views/Root.vue'),
            }]
          }]
          
          }
        ]
      }

 ]
  },
  {
    path: '/about',
    name: 'About',
    component: () => import('../views/About.vue')
  },
  {
    path:'/guanli',
    name:'Guanli',
    component: () => import('../views/Guanli.vue')

  },
  {
    path:'/doc',
    component: () => import('../views/Doc.vue')
  },
  {
    path:'/totalpages',
    component: () => import('../bingren/TotalPages.vue'),
    children:[{
      path:'/chuyuan',
      component: () => import('../bingren/Chuyuan.vue')  
    },
    {
      path:'/dayin',
      component: () => import('../bingren/Dayin.vue')
    },
    {
      path:'/chufang',
      component: () => import('../bingren/chufang.vue')
    },
    {
      path:'/totalpages',
      component: () => import('../bingren/MPdefault.vue')
    },
    {
      path:'/eleDetail',
      component: () => import('../bingren/EMRdefault.vue')
    },
    {
      path:'/addcase',
      component: () => import('../bingren/EMRaddcase.vue')
    },
    {
      path:'/bdrecord',
      component: () => import('../bingren/EMRdetail.vue')
    },
    {
      path:'/change',
      component: () => import('../bingren/EMRlook.vue')
    },
    {
      path:'/inhistory',
      component: () => import('../bingren/InHdefault.vue')
    },
    {
      path:'/ihaddcase',
      component: () => import('../bingren/IHaddcase.vue')
    },
    {
      path:'/Report',
      component: () => import('../bingren/Report.vue')
    },
    {
      path:'/case',
      component: () => import('../bingren/case.vue')
    },
    {
      path:'/ReportDetail',
      component: () => import('../bingren/ReportDetail.vue')
    },
    {
      path:'/ReportAdd',
      component: () => import('../bingren/ReportAdd.vue')
    },
    {
      path:'/Affix',
      component: () => import('../bingren/Affix.vue')
    },
    {
      path:'/amessage',
      component: () => import('../bingren/Amessage.vue')
    },
    {
      path:'/peopleM',
      component: () => import('../bingren/PeopleM.vue')
    },
  ] 
    // children:[{

    // }]

  }
]

const router = new VueRouter({
  mode:'history',
  routes
})

export default router
