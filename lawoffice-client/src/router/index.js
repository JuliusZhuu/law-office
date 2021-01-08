// 导入组件
import Vue from 'vue';
import Router from 'vue-router';
// 登录
import Login from '../views/Login';
// 首页
import index from '@/views/index';

// 商品管理
import MyWorkBenchIndex from '../views/workbench/MyWorkBenchIndex';


// 案件管理
import LawCaseIndex from '../views/lawCase/LawCaseIndex';

// 监控查询

// 图表界面
import statistics from '@/views/charts/statistics';

import ProjectIndex from "../views/project/ProjectIndex";
// 启用路由
Vue.use(Router)

// 导出路由
export default new Router({
  routes: [
    {
      path: '/',
      name: '',
      component: Login,
      hidden: true,
      meta: {
        requireAuth: false
      }
    },
    {
      path: '/login',
      name: '登录',
      component: Login,
      hidden: true,
      meta: {
        requireAuth: false
      }
    },
    {
      path: '/index',
      name: '首页',
      component: index,
      iconCls: 'el-icon-tickets',
      children: [
        {
          path: '/workBench/myWorkBench',
          name: '我的工作台',
          component: MyWorkBenchIndex,
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
          component: LawCaseIndex,
          meta: {
            requireAuth: true
          }
        }, {
          path: '/project/projectIndex',
          name: '项目管理',
          component: ProjectIndex,
          meta: {
            requireAuth: true
          }
        }, {
          path: '/charts/statistics',
          name: '数据可视化',
          component: statistics,
          meta: {
            requireAuth: true
          }
        }]
    }]
})
