<template>
  <!--添加或者编辑一个客户信息-->
  <div>
    <!--表单显示-->
    <el-dialog :title="dialogTitle" :visible.sync="dialogFormVisible"
               :show-close="false" :close-on-click-modal="false" center>
      <div class="el-dialog-div">
        <el-form :model="form">
          <h4>客户基本信息</h4>
          <el-form-item label="客户编号:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.clientNumber" placeholder="请填写客户编号" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="客户标识:" :label-width="formLabelWidth" prop="name">
            <el-radio v-model="form.identification" label="个人">个人</el-radio>
            <el-radio v-model="form.identification" label="单位">单位</el-radio>
          </el-form-item>
          <el-form-item label="合作状态:" :label-width="formLabelWidth" prop="type">
            <el-select v-model="form.teamStatus" placeholder="请选择合作状态">
              <el-option label="签约" value="签约"></el-option>
              <el-option label="意向" value="意向"></el-option>
              <el-option label="潜在" value="潜在"></el-option>
              <el-option label="终止" value="终止"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="合同起止时间:" :label-width="formLabelWidth" prop="entrust">
            <el-date-picker v-model="form.startDate" type="date" placeholder="选择日期"/>
            <el-date-picker v-model="form.endDate" type="date" placeholder="选择日期"/>
          </el-form-item>
          <el-form-item label="跟进人:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.followup" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="客户来源:" :label-width="formLabelWidth" prop="name">
            <el-select v-model="form.origin" placeholder="请选择客户来源">
              <el-option label="业务开发" value="业务开发"></el-option>
              <el-option label="客户介绍" value="客户介绍"></el-option>
              <el-option label="客户主动联系" value="客户主动联系"></el-option>
              <el-option label="朋友介绍" value="朋友介绍"></el-option>
              <el-option label="宣传推广" value="宣传推广"></el-option>
              <el-option label="网上获取" value="网上获取"></el-option>
              <el-option label="法律援助" value="法律援助"></el-option>
              <el-option label="其他" value="其他"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="单位名称:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.unitName" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="客户重要性:" :label-width="formLabelWidth" prop="name">
            <el-select v-model="form.importance" placeholder="请选择客户重要性">
              <el-option label="核心" value="核心"></el-option>
              <el-option label="重要" value="重要"></el-option>
              <el-option label="一般" value="一般"></el-option>
              <el-option label="次要" value="次要"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="单位地址:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.address" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="法定代表人:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.representative" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="联系电话:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.mobile" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="统一社会信用代码:" :label-width="formLabelWidth" prop="name">
            <el-input v-model="form.creditCode" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="备注:" :label-width="formLabelWidth" prop="name">
            <el-input type="textarea" v-model="form.backup"></el-input>
          </el-form-item>
          <!--更多信息-->
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
  import {commonToast} from "../../utils/util";
  import {insertClientInfo} from "../../request/api";

  export default {
    name: "AddOrUpdateClient",
    data() {
      return {
        //弹出框标题信息
        formLabelWidth: '130px',
        form: {
          clientNumber: null,
          identification: '个人',
          teamStatus: null,
          startDate: null,
          endDate: null,
          followup: null,
          origin: null,
          unitName: null,
          importance: null,
          address: null,
          //法定代表人
          representative: null,
          mobile: null,
          //统一社会信用代码
          creditCode: null,
          backup: null
        }
      }
    },
    methods: {
      submitForm() {
        const that = this;
        insertClientInfo(this.form).then(resp => {
          commonToast(that, null, resp.message)
        })
      },
      closeMyDialog() {
        //清空表单值

        //通知父组件关闭
        this.$emit('closeDialog', false)
      }
    },
    props: ['dialogFormVisible', 'dialogTitle', 'closeDialog']
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
