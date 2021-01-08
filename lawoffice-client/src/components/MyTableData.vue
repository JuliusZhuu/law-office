<template>
  <!--表格数据组件,用于给案件信息,项目信息公用数据展示 -->
  <div class="my-table">
    <div v-if="(typeof tableData)!== 'undefined'&&tableData.length>0">
      <el-table ref="singleTable"
                :data="tableData" max-height="500"
                highlight-current-row
                style="width: 100%" align="center">
        <el-table-column type="index" width="40"/>
        <el-table-column v-for="(item,index) in tableHeader" :label="item.labelName"
                         :property="item.propertyName" :key="index">
        </el-table-column>
        <el-table-column align="center">
          <template slot="header" slot-scope="scope">
            <el-input
              v-model="searchName" size="mini" placeholder="输入关键字搜索"/>
          </template>
          <template slot-scope="scope">
            <el-button size="mini"
                       @click="handleEdit(scope.$index, scope.row)">编辑
            </el-button>
            <el-button size="mini" type="danger"
                       @click="handleDelete(scope.$index, scope.row)">删除
            </el-button>
          </template>
        </el-table-column>
      </el-table>
      <!--分页区域-->
      <div class="page-footer">
        <el-pagination
          :current-page="pageInfo.currentPage"
          :page-sizes="[10, 20, 50, 100]"
          :page-size="pageInfo.pageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :total="pageInfo.total"
          @size-change="sizeChange"
          @current-change="currentChange">
        </el-pagination>
      </div>
    </div>
    <div v-else class="no-data">
      <el-image
        style="width: 100px; height: 100px"
        :src="noData"/>
      <p>还没有数据哦,点击左上角开始新建吧!</p>
    </div>
  </div>
</template>

<script>
  import case_nodata from '../assets/images/case_nodata.png'

  export default {
    name: "MyTableData",
    data() {
      return {
        //没有数据显示的图片
        noData: case_nodata,
        //搜索关键词
        searchName: null,
        /*
        * tableHeader:[]
        * 表头数据,labelName用于显示表头信息,propertyName用于展示数据
        * 示例数据:
        * [
        * {labelName: '姓名', propertyName: 'name'},
        * {labelName: '年龄', propertyName: 'age'},
        * {labelName: '生日', propertyName: 'date'},
        * {labelName: '地址', propertyName: 'address'}
        * ]
        * */
        /**
         * tableData: []
         * 表格数据,尽量保持跟表头信息是一致的
         * 示例数据:
         * [{name:'王小虎', age:22,date:'2016-12-22',address:'江苏淮安'}]
         */
        /**
         * pageInfo:{}
         * 分页数据
         * 示例数据:
         *            当前页         每页显示条数    总条数
         * pageInfo:{currentPage:1,pageSize:100,total:1000}
         */
        currentPage4: 1
      }
    },
    props: ['tableHeader', 'tableData', 'pageInfo', 'pageInfoChange', 'deleteItem'],
    methods: {
      /**
       * 每页显示数量发生改变
       * @param pageSize 改变之后的值
       */
      sizeChange(pageSize) {
        const currentPage = this.pageInfo.currentPage;
        this.$emit('pageInfoChange', currentPage, pageSize)
      },
      /**
       * 当前页数发生改变
       * @param currentPage 改变之后的值
       */
      currentChange(currentPage) {
        const pageSize = this.pageInfo.pageSize;
        this.$emit('pageInfoChange', currentPage, pageSize)
      },
      setCurrent(row) {

      },
      /**
       * 处理表格编辑事件
       * @param index 当前数据下标
       */
      handleEdit(index) {

      },
      /**
       * 处理表格删除事件
       *
       * @param index 当前数据下标
       */
      handleDelete(index) {
        let id = this.tableData[index].id;
        this.$emit('deleteItem', id)
      },
      clickLawCase(id) {

      }
    },
    mounted() {
      console.log(typeof this.tableData === 'undefined')
    }
  }
</script>

<style scoped>
  .my-table {
    text-align: center;
  }

  .no-data {
    margin-top: 100px;
  }
</style>
