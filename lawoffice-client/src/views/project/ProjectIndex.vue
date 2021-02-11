<template>
  <!--项目管理-->
  <div>
    <MainNavTop :itemName="itemName"/>
    <div class="filterSearch">
      <el-row :gutter="20">
        <el-col :span="4">
          <el-button type="primary" size="small" icon="el-icon-folder-add" round
                     @click="addItem">新建
          </el-button>
        </el-col>
        <el-col :span="4">
          <el-dropdown>
            <el-button type="primary" size="small">
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
            <el-button type="primary" size="small">
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
            <el-button type="primary" size="small">
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
            <el-button type="primary" size="small">
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
          <el-button size="small" icon="el-icon-position" plain>导出项目
          </el-button>
        </el-col>
      </el-row>
    </div>
    <!--表格区域-->
    <my-table-data :tableHeader="tableHeader" :tableData="tableData" :pageInfo="pageInfo"
                   @pageInfoChange="pageInfoChange" @deleteItem="deleteItem" @updateItem="updateItem"/>
    <AddOrUpdateProject v-if="dialogFormVisible"
                        :formData="formData"
                        :dialogTitle="dialogTitle"
                        @closeDialog="closeDialog"/>
  </div>
</template>

<script>
  import {listProjectInfo, deleteProjectInfo} from "../../request/api";
  import {commonToast} from '../../utils/util'

  export default {
    name: "ProjectIndex",
    data() {
      return {
        itemName: '项目管理',
        //弹出框标题信息
        dialogTitle: '新建项目',
        //弹出框显示
        dialogFormVisible: false,
        //表单数据,传递给子组件用于编辑
        formData: null,
        //表头数据
        tableHeader: [],
        //表格数据
        tableData: [],
        //分页信息
        pageInfo: {currentPage: 1, pageSize: 20, total: 100}
      }
    },
    mounted() {
      //初始化表头信息
      this.tableHeader.push(
        {labelName: '项目名称', propertyName: 'name'},
        {labelName: '项目类型', propertyName: 'type'},
        {labelName: '负责人', propertyName: 'principal'},
        {labelName: '项目等级', propertyName: 'level'},
        {labelName: '创建时间', propertyName: 'createDate'}
      )
      this.initData();
    },
    methods: {
      /**
       * 关闭弹出框
       */
      closeDialog() {
        this.dialogFormVisible = false
      },
      /**
       * 初始化数据显示
       * @param condition 条件对象{username:'julius'}
       */
      initData(condition = {currentPage: 1, pageSize: 20}) {
        const that = this
        listProjectInfo(condition).then(resp => {
          const {tableData, pageInfo} = resp.data
          that.tableData = tableData;
          that.pageInfo = pageInfo;
        })
      },
      /**
       *分页信息发生改变
       * @param currentPage 改变后的页数
       * @param pageSize 每页显示数量
       */
      pageInfoChange(currentPage, pageSize) {
        this.initData({currentPage, pageSize});
      },
      /**
       * 新增
       */
      addItem() {
        this.dialogTitle = '新增项目'
        this.formData = null;
        this.dialogFormVisible = true
      },
      /**
       * 编辑一条数据
       * @param data 要删除数据的id
       */
      updateItem(data) {
        this.dialogTitle = '编辑项目'
        this.formData = data
        this.dialogFormVisible = true
      },
      /**
       *删除一条数据
       * @param id 要删除数据的id
       */
      deleteItem(id) {
        const that = this
        deleteProjectInfo({id}).then(resp => {
          that.initData()
          commonToast(that)
        })
      },
    },
    components: {
      MyTableData: () => import('../../components/MyTableData'),
      MainNavTop: () => import('../../components/MainNavTop'),
      AddOrUpdateProject: () => import('./AddOrUpdateProject'),
    }
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
