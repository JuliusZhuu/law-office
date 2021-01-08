<template>
  <!--客户管理-->
  <div>
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>客户管理</el-breadcrumb-item>
    </el-breadcrumb>
    <div class="filterSearch">
      <el-row>
        <el-col :span="4">
          <el-button type="primary" icon="el-icon-folder-add" round size="small"
                     @click="dialogFormVisible=true">新建
          </el-button>
        </el-col>
        <el-col :span="4">
          <el-dropdown>
            <el-button type="primary" size="small">
              客户类型<i class="el-icon-arrow-down el-icon--right"></i>
            </el-button>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>全部</el-dropdown-item>
              <el-dropdown-item>单位</el-dropdown-item>
              <el-dropdown-item>个人</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </el-col>
      </el-row>
    </div>
    <MyTableData/>
  </div>
</template>

<script>
  import MyTableData from "../../components/MyTableData";

  export default {
    name: "ClientManageIndex",
    components: {MyTableData}
  }
</script>

<style scoped>
  /*筛选搜索样式*/
  .filterSearch {
    margin-top: 10px;
    padding: 10px;
    background: #F1F3FA;
  }
</style>
