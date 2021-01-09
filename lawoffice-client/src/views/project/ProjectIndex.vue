<template>
  <!--项目管理-->
  <div>
    <MainNavTop :itemName="itemName"/>
    <div class="filterSearch">
      <el-row :gutter="20">
        <el-col :span="4">
          <el-button type="primary" size="small" icon="el-icon-folder-add" round
                     @click="dialogFormVisible=true">新建
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
    <!--表单显示-->
    <el-dialog :title="dialogTitle" :visible.sync="dialogFormVisible" center>
      <div class="el-dialog-div">
        <el-form :model="form">
          <el-form-item label="项目标题:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.name" placeholder="填写项目标题,必填" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="项目类型:" :label-width="formLabelWidth" prop="type">
            <el-select v-model="form.type" placeholder="请选择项目类型">
              <el-option label="常年顾问" value="常年顾问"></el-option>
              <el-option label="专项非诉" value="专项非诉"></el-option>
              <el-option label="内部项目" value="内部项目"></el-option>
              <el-option label="其他" value="其他"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="项目等级:" :label-width="formLabelWidth" prop="level">
            <el-select v-model="form.level" placeholder="请选择项目等级">
              <el-option label="重要紧急" value="重要紧急"></el-option>
              <el-option label="紧急" value="紧急"></el-option>
              <el-option label="重要" value="重要"></el-option>
              <el-option label="一般" value="一般"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="项目委托方:" :label-width="formLabelWidth" prop="entrust">
            <el-input v-model="form.entrust" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="项目负责人:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.principal" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item style="text-align: right">
            <el-link type="primary" @click="moreInfo=!moreInfo" v-if="!moreInfo">添加更多信息>></el-link>
          </el-form-item>
          <!--更多信息-->
          <div class="more" v-if="moreInfo">
            <h4>基本信息</h4>
            <el-form-item label="委托事项及权限:" :label-width="formLabelWidth">
              <el-input v-model="form.entrustItem" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="时间:" :label-width="formLabelWidth">
              <el-date-picker v-model="form.startDate" type="date"
                              placeholder="请选择开始时间">
              </el-date-picker>
              <el-date-picker v-model="form.endDate" type="date"
                              placeholder="请选择结束时间">
              </el-date-picker>
            </el-form-item>
            <el-form-item label="项目经费:" :label-width="formLabelWidth">
              <el-input v-model="form.expenditure" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="项目经费说明:" :label-width="formLabelWidth">
              <el-input v-model="form.expendExplain" autocomplete="off"></el-input>
            </el-form-item>
            <h4>联系人信息</h4>
            <el-link type="primary" icon="el-icon-plus" @click="addConcat('#concatForm')">
              添加联系人信息
            </el-link>
            <div id="concatForm"></div>
            <h4>备注</h4>
            <el-input type="textarea" :rows="3" v-model="form.backup" autocomplete="off"></el-input>
          </div>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="primary" @click="submitForm">立即创建</el-button>
        </div>
      </div>
    </el-dialog>
    <!--表格区域-->
    <my-table-data :tableHeader="tableHeader" :tableData="tableData" :pageInfo="pageInfo"
                   @pageInfoChange="pageInfoChange" @deleteItem="deleteItem"/>
  </div>
</template>

<script>
  import {
    insertProjectInfo, listProjectInfo,
    deleteProjectInfo
  } from "../../request/api";

  export default {
    name: "ProjectIndex",
    data() {
      return {
        itemName: '项目管理',
        //弹出框标题信息
        dialogTitle: '新建项目',
        //弹出框显示
        dialogFormVisible: false,
        formLabelWidth: '120px',
        form: {
          name: null,
          type: null,
          level: null,
          entrust: null,
          principal: null,
          /*更多信息中内容*/
          //委托事项以及权限
          entrustItem: null,
          startDate: null,
          endDate: null,
          expenditure: null,
          expendExplain: null,
          backup: null
        },
        //更多信息展示
        moreInfo: false,
        //生成的多个联系人表单实例对象数组
        createConcatForms: [],
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
      submitForm() {
        //存放单个项目的基本信息
        const projectInfo = [];
        const conCats = [];
        //组装多个联系人信息
        this.createConcatForms.forEach(item => {
          conCats.push(item.formData())
        })
        //存放单个案件信息
        projectInfo.push(this.form)
        projectInfo.push(conCats)
        //添加到数据库
        insertProjectInfo(projectInfo).then(resp => {
          this.$message(resp.message)
        })
      },
      /**
       * 动态生成联系人表单信息
       * @param id 挂载元素的id
       */
      addConcat(id) {
        let rules = [
          {
            type: "input",
            title: "联系人:",
            field: "concatName"
          },
          {
            type: "input",
            title: "所在机构:",
            field: "organization"
          },
          {
            type: "input",
            title: "职位:",
            field: "position"
          },
          {
            type: "input",
            title: "手机:",
            field: "mobile"
          },
          {
            type: "input",
            title: "邮箱:",
            field: "email"
          },
          {
            type: "input",
            title: "住址:",
            field: "address"
          },
        ]
        this.createConcatForms.push(this.dynamicCreateForm(rules, id));
      },
      /**
       * 动态创建表单
       * @param rules 表单生成规则
       * @param id  挂载的元素id,例如#test
       * @param btnText 删除按钮显示文本
       * @returns  创建的表单对象
       */
      dynamicCreateForm(rules, id, btnText = "删除联系人") {
        return formCreate.create(rules, {
            el: id,//挂载节点元素
            submitBtn: {
              //类型 primary / success / warning / danger / info / text
              type: "danger",
              //尺寸 medium / small / mini
              size: "medium",
              //按钮宽度
              width: '20%',
              icon: 'el-icon-delete',
              //按钮内容
              innerText: btnText,
              //按钮点击事件(删除当前表单)
              click: function (form) {
                form.destroy()
              }
            }
          }
        )
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
       *删除一条数据
       * @param id 要删除数据的id
       */
      deleteItem(id) {
        const that = this
        deleteProjectInfo({id}).then(resp => {
          that.initData()
          that.$message({
            type: 'success',
            message: '成功'
          })
        })
      }
    },
    components: {
      MyTableData: () => import('../../components/MyTableData'),
      MainNavTop: () => import('../../components/MainNavTop')
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

  .dialog-footer {
    text-align: center;
  }

  /*设置固定高度*/
  .el-dialog-div {
    height: 70vh;
    overflow: auto;
  }

</style>
