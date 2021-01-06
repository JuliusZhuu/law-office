<template>
  <div>
  <el-breadcrumb separator-class="el-icon-arrow-right">
    <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
    <el-breadcrumb-item>项目管理</el-breadcrumb-item>
  </el-breadcrumb>
  <div class="filterSearch">
    <el-row :gutter="20">
      <el-col :span="4">
        <el-button type="primary" icon="el-icon-folder-add" round
                   @click="dialogFormVisible=true">新建</el-button>
      </el-col>
      <el-col :span="4">
        <el-dropdown>
          <el-button type="primary">
            项目类型<i class="el-icon-arrow-down el-icon--right"></i>
          </el-button>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>民事诉讼</el-dropdown-item>
            <el-dropdown-item>刑事诉讼</el-dropdown-item>
            <el-dropdown-item>行政投诉</el-dropdown-item>
            <el-dropdown-item>行政诉讼</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-col>
      <el-col :span="4">
        <el-dropdown>
          <el-button type="primary">
            我参与的<i class="el-icon-arrow-down el-icon--right"></i>
          </el-button>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>我参与的</el-dropdown-item>
            <el-dropdown-item>我负责的</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-col>
      <el-col :span="4">
        <el-dropdown>
          <el-button type="primary">
            在办项目<i class="el-icon-arrow-down el-icon--right"></i>
          </el-button>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>在办案件</el-dropdown-item>
            <el-dropdown-item>归档案件</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-col>
      <el-col :span="4">
        <el-dropdown>
          <el-button type="primary">
            项目等级<i class="el-icon-arrow-down el-icon--right"></i>
          </el-button>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>重要紧急</el-dropdown-item>
            <el-dropdown-item>紧急</el-dropdown-item>
            <el-dropdown-item>重要</el-dropdown-item>
            <el-dropdown-item>一般</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-col>
      <el-col :span="4">
        <el-tag>导出项目</el-tag>
      </el-col>
    </el-row>
  </div>
  </div>
</template>

<script>
    export default {
        name: "ProjectIndex"
    }
</script>

<style scoped>
  /*筛选搜索样式*/
  .filterSearch {
    padding: 15px;
    background: #F1F3FA;
  }
</style>
