<template>
  <!--主要内容区域的面包屑组件-->
  <el-breadcrumb separator-class="el-icon-arrow-right">
    <el-breadcrumb-item :to="{ path: '/workBench/myWorkBench' }">首页</el-breadcrumb-item>
    <el-breadcrumb-item>{{itemName}}</el-breadcrumb-item>
  </el-breadcrumb>
</template>

<script>
  export default {
    name: "MainNavTop",
    props: ['itemName']
  }
</script>

<style scoped>

</style>
