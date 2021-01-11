<template>
  <div class="app-container">
    <el-row>
      <el-col :span="8" :xs="24">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>个人信息</span>
          </div>
          <div>
            <div class="text-center">
              <el-image
                style="width: 100px; height: 100px"
                :src="user.imageUrl"/>
            </div>
            <ul class="list-group list-group-striped">
              <li class="list-group-item">
                <i class="iconfont iconwode3">用户名称</i>
                <span class="pull-right">{{ user.nickName }}</span>
              </li>
              <li class="list-group-item">
                <i class="iconfont iconshouji-copy-copy"> 手机号码</i>
                <div class="pull-right">{{ user.phonenumber }}</div>
              </li>
              <li class="list-group-item">
                <i class="iconfont iconyouxiang">用户邮箱</i>
                <div class="pull-right">{{ user.email }}</div>
              </li>
              <li class="list-group-item">
                <i class="iconfont iconbumen">所属部门</i>
                <div class="pull-right" v-if="user.dept">{{ user.dept }}</div>
              </li>
              <li class="list-group-item">
                <i class="iconfont iconjiaose">所属角色</i>
                <div class="pull-right" v-if="user.role">{{ user.role }}</div>
              </li>
              <li class="list-group-item">
                <i class="iconfont iconriqiqishu">创建日期</i>
                <div class="pull-right">{{ user.createTime }}</div>
              </li>
            </ul>
          </div>
        </el-card>
      </el-col>
      <el-col :span="16" :xs="24">
        <el-card>
          <div slot="header" class="clearfix">
            <span>基本资料</span>
          </div>
          <el-tabs v-model="activeTab">
            <el-tab-pane label="基本资料" name="userinfo">
              <el-form ref="form" :model="user" :rules="rules" label-width="80px">
                <el-form-item label="用户昵称" prop="nickName">
                  <el-input v-model="user.nickName"/>
                </el-form-item>
                <el-form-item label="手机号码" prop="phonenumber">
                  <el-input v-model="user.phonenumber" maxlength="11"/>
                </el-form-item>
                <el-form-item label="邮箱" prop="email">
                  <el-input v-model="user.email" maxlength="50"/>
                </el-form-item>
                <el-form-item label="性别">
                  <el-radio-group v-model="user.sex">
                    <el-radio label="0">男</el-radio>
                    <el-radio label="1">女</el-radio>
                  </el-radio-group>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" size="mini">保存</el-button>
                  <el-button type="danger" size="mini">关闭</el-button>
                </el-form-item>
              </el-form>
            </el-tab-pane>
            <el-tab-pane label="修改密码" name="resetPwd">
              重置密码
            </el-tab-pane>
          </el-tabs>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
  import avatar from '../../assets/images/timg.jpg'

  export default {
    name: "MyInfoIndex.vue",
    data() {
      return {
        user: {
          imageUrl: avatar,
          nickName: '用户aaa',
          phonenumber: '17618792589',
          email: '1135061539@qq.com',
          sex: '0',
          dept: '销售部',
          role: '员工',
          createTime: '2021/1/1'
        },
        roleGroup: {},
        postGroup: {},
        activeTab: "userinfo",
        // 遮罩层
        loading: true,
        // 选中数组
        ids: [],
        // 非单个禁用
        single: true,
        // 非多个禁用
        multiple: true,
        // 显示搜索条件
        showSearch: true,
        // 总条数
        total: 0,
        // 用户表格数据
        userList: null,
        // 弹出层标题
        title: "",
        // 部门树选项
        deptOptions: undefined,
        // 是否显示弹出层
        open: false,
        // 部门名称
        deptName: undefined,
        // 默认密码
        initPassword: undefined,
        // 日期范围
        dateRange: [],
        // 状态数据字典
        statusOptions: [],
        // 性别状态字典
        sexOptions: [],
        // 岗位选项
        postOptions: [],
        // 角色选项
        roleOptions: [],
        // 表单参数
        form: {},
        defaultProps: {
          children: "children",
          label: "label"
        },
        // 用户导入参数
        upload: {
          // 是否显示弹出层（用户导入）
          open: false,
          // 弹出层标题（用户导入）
          title: "",
          // 是否禁用上传
          isUploading: false,
          // 是否更新已经存在的用户数据
          updateSupport: 0,
          // 设置上传的请求头部
          headers: {Authorization: "Bearer "},
          // 上传的地址
          url: '',
        },
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          userName: undefined,
          phonenumber: undefined,
          status: undefined,
          deptId: undefined
        },
        // 列信息
        columns: [
          {key: 0, label: `用户编号`, visible: true},
          {key: 1, label: `用户名称`, visible: true},
          {key: 2, label: `用户昵称`, visible: true},
          {key: 3, label: `部门`, visible: true},
          {key: 4, label: `手机号码`, visible: true},
          {key: 5, label: `状态`, visible: true},
          {key: 6, label: `创建时间`, visible: true}
        ],
        // 表单校验
        rules: {
          userName: [
            {required: true, message: "用户名称不能为空", trigger: "blur"}
          ],
          nickName: [
            {required: true, message: "用户昵称不能为空", trigger: "blur"}
          ],
          password: [
            {required: true, message: "用户密码不能为空", trigger: "blur"}
          ],
          email: [
            {
              type: "email",
              message: "'请输入正确的邮箱地址",
              trigger: ["blur", "change"]
            }
          ],
          phonenumber: [
            {
              pattern: /^1[3|4|5|6|7|8|9][0-9]\d{8}$/,
              message: "请输入正确的手机号码",
              trigger: "blur"
            }
          ]
        }
      };
    },
    watch: {
      // 根据名称筛选部门树
      deptName(val) {
        this.$refs.tree.filter(val);
      }
    }
  };
</script>
<style scoped>
  .pull-right {
    float: right;
  }

  .text-center {
    text-align: center;
  }
</style>
