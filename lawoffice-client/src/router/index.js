/*全局路由配置*/
import Vue from 'vue';
import Router from 'vue-router';
// 启用路由
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: '',
      component: () => import('../views/Login'),
      hidden: true,
      meta: {
        requireAuth: false
      }
    },
    {
      path: '/login',
      name: '登录',
      component: () => import('../views/Login'),
      hidden: true,
      meta: {
        requireAuth: false
      }
    },
    {
      path: '/index',
      name: '首页',
      component: () => import('../views/index'),
      iconCls: 'el-icon-tickets',
      children: [
        {
          path: '/workBench/myWorkBench',
          name: '我的工作台',
          component: () => import('../views/workbench/MyWorkBenchIndex'),
          meta: {
            requireAuth: true
          }
        },
        {
          path: '/client/clientManageIndex',
          name: '客户管理',
          component: () => import('../views/client/ClientManageIndex'),
          meta: {
            requireAuth: true
          }
        },
        {
          path: '/lawCase/lawCase',
          name: '案件管理',
          component: () => import('../views/lawCase/LawCaseIndex'),
          meta: {
            requireAuth: true
          }
        },
        {
          path: '/project/projectIndex',
          name: '项目管理',
          component: () => import('../views/project/ProjectIndex'),
          meta: {
            requireAuth: true
          }
        },
        {
          path: '/charts/statistics',
          name: '数据可视化',
          component: () => import('../views/charts/statistics'),
          meta: {
            requireAuth: true
          }
        }]
    }]
})
