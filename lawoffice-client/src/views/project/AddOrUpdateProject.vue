<template>
  <!--添加或者更新一个项目信息-->
  <div>
    <el-dialog :title="dialogTitle" :visible.sync="dialogFormVisible"
               @close="closeMyDialog"
               :close-on-click-modal="false" center>
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
            <el-link type="primary" @click="moreInfo=!moreInfo" v-if="!moreInfo">
              {{formData===null?'添加更多信息>>':'查看更多信息>>'}}
            </el-link>
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
          <el-button @click="closeMyDialog">关闭</el-button>
        </div>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  import {updateProjectInfo, insertProjectInfo} from "../../request/api";
  import formCreate from "@form-create/element-ui";
  import {commonToast} from '../../utils/util'

  export default {
    name: "AddOrUpdateProject",
    data() {
      return {
        dialogFormVisible: false,
        formLabelWidth: '120px',
        form: {
          id: null,
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
      }
    },
    mounted() {
      this.dialogFormVisible = true
      console.log(this.formData)
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
        if (this.formData === null) {
          insertProjectInfo(projectInfo).then(resp => {
            commonToast(this, 'success', resp.message)
          })
        } else {
          updateProjectInfo().then(resp => {
            commonToast(this, 'success', resp.message)
          })
        }
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
      closeMyDialog() {
        this.$emit('closeDialog')
      }
    },
    props: ['closeDialog', 'dialogTitle', 'formData']
  }
</script>

<style scoped>
  .dialog-footer {
    text-align: center;
  }

  /*设置固定高度*/
  .el-dialog-div {
    height: 70vh;
    overflow: auto;
  }

</style>
