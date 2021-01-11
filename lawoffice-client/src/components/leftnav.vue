<template>
  <!--侧边菜单栏-->
  <el-menu default-active="2" :collapse="collapsed" collapse-transition router :default-active="$route.path"
           unique-opened class="el-menu-vertical-demo" background-color="#334157" text-color="#fff"
           active-text-color="#ffd04b">
    <div class="logobox">
      <img class="logoimg" src="../assets/images/logo.png">
    </div>
    <el-submenu v-for="menu in allmenu" :key="menu.menuid" :index="menu.menuname">
      <template slot="title">
        <i class="iconfont" :class="menu.icon"></i>
        <span>{{menu.menuname}}</span>
      </template>
      <el-menu-item-group>
        <el-menu-item v-for="chmenu in menu.menus" :index="'/'+chmenu.url" :key="chmenu.menuid">
          <i class="iconfont" :class="chmenu.icon"></i>
          <span>{{chmenu.menuname}}</span>
        </el-menu-item>
      </el-menu-item-group>
    </el-submenu>
  </el-menu>
</template>
<script>

  export default {
    name: 'leftnav',
    data() {
      return {
        collapsed: false,
        allmenu: []
      }
    },
    created() {
      let res = {
        success: true,
        data: [
          {
            menuid: 1,
            icon: 'icongongzuotai1-active',
            menuname: '工作台',
            hasThird: null,
            url: null,
            menus: [
              {
                menuid: 2,
                icon: 'iconwodegongzuotai',
                menuname: '我的工作台',
                hasThird: 'N',
                url: 'workBench/myWorkBench',
                menus: null
              }
            ]
          },
          {
            menuid: 33,
            icon: 'iconanjian',
            menuname: '案件',
            hasThird: null,
            url: null,
            menus: [
              {
                menuid: 34,
                icon: 'iconanjianguanli',
                menuname: '案件管理',
                hasThird: 'N',
                url: 'lawCase/lawCaseIndex',
                menus: null
              }
            ]
          },
          {
            menuid: 71,
            icon: 'iconzu',
            menuname: '项目',
            hasThird: null,
            url: null,
            menus: [
              {
                menuid: 72,
                icon: 'iconxiangmuguanli',
                menuname: '项目管理',
                hasThird: 'N',
                url: 'project/projectIndex',
                menus: null
              }
            ]
          },
          {
            menuid: 128,
            icon: 'iconkehu',
            menuname: '客户',
            hasThird: null,
            url: null,
            menus: [
              {
                menuid: 129,
                icon: 'iconkehuguanli',
                menuname: '客户管理',
                hasThird: 'N',
                url: 'client/clientManageIndex',
                menus: null
              }
            ]
          },
          {
            menuid: 150,
            icon: 'icontongji',
            menuname: '统计',
            hasThird: null,
            url: null,
            menus: [
              {
                menuid: 159,
                icon: 'iconkeshihua',
                menuname: '数据可视化',
                hasThird: 'N',
                url: 'charts/statistics',
                menus: null
              }
            ]
          },
          {
            menuid: 160,
            icon: 'iconwode3',
            menuname: '个人',
            hasThird: null,
            url: null,
            menus: [
              {
                menuid: 159,
                icon: 'icongerenzhongxin',
                menuname: '个人信息',
                hasThird: 'N',
                url: 'myInfo/myInfoIndex',
                menus: null
              }
            ]
          }
        ],
        msg: 'success'
      }
      this.allmenu = res.data
      // 监听
      this.$root.Bus.$on('toggle', value => {
        this.collapsed = !value
      })
    }
  }
</script>
<style>
  .el-menu-vertical-demo:not(.el-menu--collapse) {
    width: 240px;
    min-height: 400px;
  }

  .el-menu-vertical-demo:not(.el-menu--collapse) {
    border: none;
    text-align: left;
  }

  .el-menu-item-group__title {
    padding: 0px;
  }

  .el-menu-bg {
    background-color: #1f2d3d !important;
  }

  .el-menu {
    border: none;
  }

  .logobox {
    height: 100px;
    line-height: 20px;
    color: #9d9d9d;
    font-size: 20px;
    text-align: center;
    padding: 20px 0;
  }

  .logoimg {
    height: 100px;
  }
</style>
