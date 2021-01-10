<template>
  <!--添加或者更新一个案件信息-->
  <div>
    <el-dialog :title="dialogTitle" :visible.sync="dialogFormVisible"
               @close="closeMyDialog" :close-on-click-modal="false" center>
      <div class="el-dialog-div">
        <el-form :model="form" ref="lawCaseForm" :rules="rules">
          <el-form-item label="案件标题:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.name" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="案件负责人:" :label-width="formLabelWidth" prop="principal">
            <el-select v-model="form.principal" placeholder="请选择案件负责人">
              <el-option label="julius" value="julius"></el-option>
              <el-option label="lili" value="lili"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="案件类型:" :label-width="formLabelWidth" prop="type">
            <el-select v-model="form.type" placeholder="请选择案件类型">
              <el-option label="民事诉讼" value="民事诉讼"></el-option>
              <el-option label="刑事诉讼" value="刑事诉讼"></el-option>
              <el-option label="行政投诉" value="行政投诉"></el-option>
              <el-option label="行政诉讼" value="行政诉讼"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="案件等级:" :label-width="formLabelWidth" prop="level">
            <el-select v-model="form.level" placeholder="请选择案件等级">
              <el-option label="重要紧急" value="重要紧急"></el-option>
              <el-option label="紧急" value="紧急"></el-option>
              <el-option label="重要" value="重要"></el-option>
              <el-option label="一般" value="一般"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item style="text-align: right">
            <el-link type="primary" @click="showMore" v-if="!moreInfo">添加更多信息>></el-link>
          </el-form-item>
          <!--添加更多信息-->
          <div v-if="moreInfo">
            <h4>案件当事人</h4>
            <el-link type="primary" icon="el-icon-plus" @click="addPartiesForm('#partiesForm')">添加当事人</el-link>
            <!--动态增加表单-->
            <div id="partiesForm"></div>
            <h4>基本信息</h4>
            <el-form-item label="案由:" :label-width="formLabelWidth">
              <el-input v-model="form.reason" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="审理程序:" :label-width="formLabelWidth">
              <el-input v-model="form.program" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="审理机构:" :label-width="formLabelWidth">
              <el-input v-model="form.organization" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="审理机构案号:" :label-width="formLabelWidth">
              <el-input v-model="form.organizationNumber" autocomplete="off"></el-input>
            </el-form-item>
            <h4>审理人员信息</h4>
            <el-link type="primary" icon="el-icon-plus" @click="addHearPersonnel('#hearForm')">添加审理人员</el-link>
            <div id="hearForm"></div>
            <h4>辅助人员信息</h4>
            <el-link type="primary" icon="el-icon-plus" @click="addAssistPersonnel('#assistForm')">添加辅助人员</el-link>
            <div id="assistForm"></div>
            <h4>备注</h4>
            <el-input type="textarea"
                      :autosize="{ minRows: 2, maxRows: 4}" placeholder="请输入内容" v-model="form.backup"/>
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
  import {addLawCase} from "../../request/api";
  import formCreate from "@form-create/element-ui";
  import {commonToast} from '../../utils/util'

  export default {
    name: "AddOrUpdateLawCase",
    data() {
      return {
        dialogFormVisible: true,
        //生成的多个当事人表单实例对象数组
        createPartiesForms: [],
        //生成的多个审理人员表单实例对象数组
        createHearForms: [],
        //生成的多个辅助人员表单实例对象数组
        createAssistForms: [],
        moreInfo: false,//添加更多信息
        form: {
          name: '',//案件标题
          principal: '',//案件负责人
          type: '',//案件类型
          level: '',//案件等级
          reason: '',//案由
          program: '',//审理程序
          organization: '',//审理机构
          organizationNumber: '',//审理机构案号
          backup: ''//备注
        },
        formLabelWidth: '100px',
        rules: {
          name: [
            {required: true}
          ],
          principal: [
            {required: true}
          ],
          type: [
            {required: true}
          ],
          level: [
            {required: true}
          ],
        }
      }
    },
    methods: {
      closeMyDialog() {
        //通知父组件关闭
        this.$emit('closeDialog')
      },
      //显示更多添加信息
      showMore() {
        this.moreInfo = true
      },
      /**
       * 添加当事人表单
       * @param id 挂载元素的id,例如#partiesForm
       */
      addPartiesForm(id) {
        //表单生成规则
        let rules = [
          {
            type: "select",
            field: "parties",
            title: "当事人:",
            value: ["104", "105"],
            options: [
              {"value": "104", "label": "原告", "disabled": false},
              {"value": "105", "label": "被告", "disabled": false},
            ]
          }, {
            type: "radio",
            title: "类型:",
            field: "partiesType",
            value: "0",
            options: [
              {value: "0", label: "个人", disabled: false},
              {value: "1", label: "单位", disabled: false},
            ],
          },
          {
            type: 'input',
            field: 'name',
            title: '姓名:'
          },
          {
            type: "radio",
            title: "性别:",
            field: "sex",
            value: "0",
            options: [
              {value: "0", label: "男", disabled: false},
              {value: "1", label: "女", disabled: false},
            ]
          }, {
            type: "select",
            field: "credentialsType",
            title: "证件类型:",
            value: ["104", "105"],
            options: [
              {"value": "104", "label": "身份证", "disabled": false},
              {"value": "105", "label": "军官证", "disabled": false},
              {"value": "106", "label": "护照", "disabled": false},
            ]
          },
          {
            type: "input",
            field: "personNumber",
            title: "身份证号:"
          },
          {
            type: "input",
            field: "birthDay",
            title: "出生日期:"
          },
          {
            type: "input",
            title: "住址:",
            field: "address",
          },
          {
            type: "input",
            title: "联系方式:",
            field: "concatWay",
          },
          {
            type: "input",
            title: "备注:",
            field: "backup",
            props: {
              "type": "textarea",
            }
          }
        ]
        this.createPartiesForms.push(this.dynamicCreateForm(rules, id, '删除当事人'));
      },
      /**
       * 添加审理人员信息
       * @param id   挂载的元素id,例如#test
       */
      addHearPersonnel(id) {
        let rules = [
          {
            type: "input",
            title: "姓名:",
            field: "name"
          },
          {
            type: "input",
            title: "联系方式:",
            field: "mobile"
          },
          {
            type: "input",
            title: "其他信息:",
            field: "other"
          }]
        this.createHearForms.push(this.dynamicCreateForm(rules, id, '删除审理人员'));
      },
      /**
       * 添加辅助人员信息
       * @param id   挂载的元素id,例如#test
       */
      addAssistPersonnel(id) {
        let rules = [
          {
            type: "input",
            title: "姓名:",
            field: "name"
          },
          {
            type: "input",
            title: "联系方式:",
            field: "mobile"
          },
          {
            type: "input",
            title: "其他信息:",
            field: "other"
          }]
        this.createAssistForms.push(this.dynamicCreateForm(rules, id, '删除辅助人员'));
      },
      /**
       * 动态创建表单
       * @param rules 表单生成规则
       * @param id  挂载的元素id,例如#test
       * @param btnText 删除按钮显示文本
       * @returns  创建的表单对象
       */
      dynamicCreateForm(rules, id, btnText = "删除当事人") {
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
      //提交表单信息
      submitForm() {
        //存放单个案件信息
        const lawCase = [];
        const partiesArr = [];
        const hearArr = [];
        const assistArr = [];
        this.createPartiesForms.forEach(item => {
          partiesArr.push(item.formData());
        })
        this.createHearForms.forEach(item => {
          hearArr.push(item.formData())
        })
        this.createAssistForms.forEach(item => {
          assistArr.push(item.formData())
        })
        //组装数据
        lawCase.push(this.form)
        lawCase.push(partiesArr)
        lawCase.push(hearArr)
        lawCase.push(assistArr)
        //存储到数据库
        addLawCase(lawCase).then(resp => {
          commonToast(this)
        })
      },
    },
    props: ['closeDialog', 'dialogTitle']
  }
</script>

<style scoped>
  .dialog-footer {
    text-align: center
  }

  /*设置固定高度*/
  .el-dialog-div {
    height: 70vh;
    overflow: auto;
  }
</style>
