<template>
  <!--案件管理-->
  <div>
    <MainNavTop :itemName="itemName"/>
    <!--顶部下拉筛选框-->
    <div class="filterSearch">
      <el-row>
        <el-col :span="4">
          <el-button type="primary" icon="el-icon-folder-add" round size="small"
                     @click="addItem">新建
          </el-button>
        </el-col>
        <el-col :span="4">
          <el-dropdown>
            <el-button type="primary" size="small">
              案件类型<i class="el-icon-arrow-down el-icon--right"></i>
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
              在办案件<i class="el-icon-arrow-down el-icon--right"></i>
            </el-button>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>在办项目</el-dropdown-item>
              <el-dropdown-item>归档项目</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </el-col>
        <el-col :span="4">
          <el-dropdown>
            <el-button type="primary" size="small">
              案件等级<i class="el-icon-arrow-down el-icon--right"></i>
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
          <el-button size="mini" icon="el-icon-upload2" plain>导入案件
          </el-button>
          <el-button style="margin:0" size="mini" icon="el-icon-position" plain>导出案件
          </el-button>
        </el-col>
      </el-row>
    </div>
    <!--数据区域-->
    <my-table-data :tableHeader="tableHeader" :tableData="tableData" :pageInfo="pageInfo"
                   @pageInfoChange="pageInfoChange" @deleteItem="deleteItem"
                   @updateItem="updateItem"/>
    <!--弹出框显示-->
    <AddOrUpdateLawCase v-if="dialogFormVisible" :dialogTitle="dialogTitle"
                        @closeDialog="closeDialog" :formData="formData"/>
  </div>
</template>

<script>
  import {listLawCase, deleteLawCase} from "../../request/api";
  import {commonToast} from '../../utils/util'

  export default {
    data() {
      return {
        //控制弹出表单显示
        dialogFormVisible: false,
        dialogTitle: '添加案件',
        formData: null,
        itemName: '案件管理',
        tableHeader: [],
        tableData: [],
        pageInfo: {currentPage: 1, pageSize: 20, total: 100}
      }
    },
    methods: {
      /**
       * 初始化数据显示
       * @param condition 条件对象{username:'julius'}
       */
      initData(condition = {currentPage: 1, pageSize: 20}) {
        const that = this
        this.tableData = []
        listLawCase(condition).then(resp => {
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
       * 新增一条案件
       */
      addItem() {
        this.dialogTitle = '新增案件'
        this.formData = null
        this.dialogFormVisible = true
      },
      /**
       *删除一条数据
       * @param id 要删除数据的id
       */
      deleteItem(id) {
        const that = this
        deleteLawCase({id}).then(resp => {
          that.initData()
          commonToast(that)
        })
      },
      /**
       *编辑一条数据
       * @param data 新的数据
       */
      updateItem(data) {
        this.dialogTitle = '编辑案件'
        this.formData = data
        this.dialogFormVisible = true
      },
      /**
       * 关闭弹出框
       */
      closeDialog() {
        this.dialogFormVisible = false
      }
    },
    mounted() {
      //初始化表头信息
      this.tableHeader.push(
        {labelName: '案件名称', propertyName: 'name'},
        {labelName: '案号', propertyName: 'organizationNumber'},
        {labelName: '负责人', propertyName: 'principal'},
        {labelName: '审理机构', propertyName: 'organization'},
        {labelName: '案件等级', propertyName: 'level'}
      )
      this.initData();
    },
    components: {
      MyTableData: () => import('../../components/MyTableData'),
      MainNavTop: () => import('../../components/MainNavTop'),
      AddOrUpdateLawCase: () => import('./AddOrUpdateLawCase')
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




