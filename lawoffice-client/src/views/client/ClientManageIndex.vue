<template>
  <!--客户管理-->
  <div>
    <MainNavTop :itemName="itemName"/>
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
    <MyTableData :tableHeader="tableHeader" :tableData="tableData" :pageInfo="pageInfo"
                 @pageInfoChange="pageInfoChange" @deleteItem="deleteItem"/>
    <AddOrUpdateClient v-if="dialogFormVisible" :dialogTitle="dialogTitle"
                       @closeDialog="closeDialog"/>
  </div>
</template>

<script>
  import {deleteClientInfo, listClientInfo} from "../../request/api";
  import {commonToast} from "../../utils/util";

  export default {
    name: "ClientManageIndex",
    data() {
      return {
        itemName: '客户管理',
        dialogTitle: '新建客户',
        dialogFormVisible: false,
        //表头数据
        tableHeader: [],
        //表格数据
        tableData: [],
        //分页信息
        pageInfo: {currentPage: 1, pageSize: 20, total: 100}
      }
    },
    methods: {
      /**
       * 关闭对话框,由于vue是单向数据流,只能通过父组件去改变
       */
      closeDialog() {
        this.dialogFormVisible = false
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
       *删除一条数据
       * @param id 要删除数据的id
       */
      deleteItem(id) {
        const that = this
        deleteClientInfo({id}).then(resp => {
          that.initData()
          commonToast(that, null, resp.message)
        })
      },
      /**
       * 初始化数据显示
       * @param condition 条件对象{username:'julius'}
       */
      initData(condition = {currentPage: 1, pageSize: 20}) {
        const that = this
        listClientInfo(condition).then(resp => {
          const {tableData, pageInfo} = resp.data
          that.tableData = tableData;
          that.pageInfo = pageInfo;
        })
      }
    },
    mounted() {
      //初始化表头信息
      this.tableHeader.push(
        {labelName: '签约状态', propertyName: 'teamStatus'},
        {labelName: '客户编号', propertyName: 'clientNumber'},
        {labelName: '客户标识', propertyName: 'identification'},
        {labelName: '合同起始日', propertyName: 'startDate'},
        {labelName: '合同终止日', propertyName: 'endDate'},
        {labelName: '客户跟进人', propertyName: 'followup'}
      )
      this.initData();
    },
    components: {
      MainNavTop: () => import('../../components/MainNavTop'),
      MyTableData: () => import('../../components/MyTableData'),
      AddOrUpdateClient: () => import('./AddOrUpdateClient')
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
