<template>
  <!--表格数据组件,用于给案件信息,项目信息公用数据展示 -->
  <div>
    <el-table
      ref="singleTable"
      :data="tableData"
      highlight-current-row @current-change="handleCurrentChange"
      style="width: 100%">
      <el-table-column type="index" width="40"/>
      <el-table-column v-for="(item,index) in tableHeader" :label="item.labelName"
                       :property="item.propertyName" width="120" :key="index">
      </el-table-column>
    </el-table>
  </div>

</template>

<script>
  export default {
    name: "MyTableData",
    data() {
      return {
        /*
        * 表头数据,labelName用于显示表头信息,propertyName用于展示数据
        * 示例数据:
        * [
        * {labelName: '姓名', propertyName: 'name'},
        * {labelName: '年龄', propertyName: 'age'},
        * {labelName: '生日', propertyName: 'date'},
        * {labelName: '地址', propertyName: 'address'}
        * ]
        * */
        //tableHeader: [{labelName: '姓名', propertyName: 'name'}],
        /**
         * 表格数据,尽量保持跟表头信息是一致的
         * 示例数据:
         * [{name:'王小虎', age:22,date:'2016-12-22',address:'江苏淮安'}]
         */
        //tableData: []
      }
    },
    props: ['tableHeader','tableData'],
    mounted() {

    },
    methods: {
      setCurrent(row) {
        this.$refs.singleTable.setCurrentRow(row);
      },
      handleCurrentChange(val) {
        this.currentRow = val;
      }
    }
  }
</script>

<style scoped>

</style>
