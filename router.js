import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Test from "./components/Test.vue"
import List from "./components/List.vue"
import Login from "./components/tabbar/Login.vue"
import GoodList from "./components/tabbar/GoodList.vue"
import Home from "./components/tabbar/Home.vue"
import NewsList from "./components/home/NewsList.vue"
import NewsInfo from "./components/home/NewsInfo.vue"
import Exam01 from './components/test/Exam01.vue'
import Exam02 from './components/test/Exam02.vue'
import ShopCart from './components/home/ShopCart.vue'
import GoodInfo from './components/tabbar/GoodInfo.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Test',component:Test},
    {path:'/List',component:List},
    {path:'/Login',component:Login},
    {path:'/GoodList',component:GoodList},
    {path:'/Home',component:Home},
    {path:'/NewsList',component:NewsList},
    {path:'/NewsInfo',component:NewsInfo},
    {path:'/Exam01',component:Exam01},
    {path:'/Exam02',component:Exam02},
    {path:'/ShopCart',component:ShopCart},
    {path:'/GoodInfo',component:GoodInfo},
    
  ]
})
