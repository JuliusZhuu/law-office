<template>
  <el-container class="login-image">
    <div class="Main">
      <div class="main">
        <div class="login-logo"><img width="125" height="125" src="../assets/images/logo.png"/></div>
        <div class="login-title">江苏益淮律师事务所</div>
        <div class="login-main">
          <div class="login-form">
            <el-form :model="loginInfo" class="login-info">
              <el-row :gutter='15'>
                <el-col :span="24">
                  <el-form-item>
                    <div class="userName">
                      <img src="../assets/login/yhm.png" alt="">
                    </div>
                    <el-input v-model="loginInfo.username" ref="account" placeholder="请输入用户名" class="inpt-mid-size"
                    ></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item>
                    <div class="password">
                      <img src="../assets/login/mm.png" alt="">
                    </div>
                    <el-input v-model="loginInfo.password" ref="password" type="password" placeholder="请输入密码"
                              class="inpt-mid-size"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item>
                    <div class="verificationCode">
                      <img src="../assets/login/yzm.png" alt="">
                    </div>
                    <el-input v-model="loginInfo.code" ref="code" placeholder="请输入验证码"
                              class="inpt-mid-size"/>
                  </el-form-item>
                  <el-form-item class="random-code" label="验证码:">
                    <el-button class="code-button" type="primary" @click="nextCode"> {{loginInfo.randomCode}}
                    </el-button>
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item>
                    <el-button @click="loginFun" class="inpt-mid-size inpt-btn">登 录</el-button>
                  </el-form-item>
                </el-col>
              </el-row>
            </el-form>
          </div>
        </div>
      </div>
      <div class="bottom">
        所属单位：江苏益淮律师事务所
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--        备案号：<a href="http://www.beian.miit.gov.cn" target="_blank"> 苏ICP备18025878号-1</a>&nbsp;&nbsp;&nbsp;-->
        技术支持：江苏电子信息职业学院
      </div>
    </div>
  </el-container>
</template>

<script>
  import {goLogin} from '../request/api'

  export default {
    data() {
      return {
        login: '登录',
        labelPosition: 'right',
        loginInfo: {
          username: '',
          password: '',
          code: '',
          //随机验证码
          randomCode: null,
        }
      }
    },
    methods: {
      loginFun() {
        const {username, password, randomCode, code} = this.loginInfo
        //校验验证码
        if (!(randomCode.toUpperCase() === code.toUpperCase())) {
          this.$message({
            type: "error",
            message: '验证码输入不正确!'
          })
          this.nextCode();
          return
        }
        goLogin({username, password}).then(resp => {
          this.$message({
            type: 'success',
            message: resp.message
          })
          if (resp.status === 200) {
            setTimeout(() => {
              this.logining = false
              this.$store.commit('login', 'true')
              this.$router.push({path: '/workBench/myWorkBench'})
            }, 1000)
          }
        }).catch(error => {

        })
      },
      /**
       * 更换验证码内容
       */
      nextCode() {
        this.loginInfo.randomCode = '';
        // 验证码组成库
        const arrays = ['1', '2', '3', '4', '5', '6', '7', '8',
          '9', '0', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
          'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
          'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
          'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
          'U', 'V', 'W', 'X', 'Y', 'Z'];
        let code = ''
        for (let i = 0; i < 4; i++) {
          let index = Math.round(Math.random() * arrays.length);
          code += arrays[index];
        }
        this.loginInfo.randomCode = code;
      }
    },
    mounted() {
      this.nextCode();
    }
  }
</script>
<style scoped>
  .random-code {
    color: white;
    font-weight: bold;
  }

  .code-button {
    letter-spacing: 5px;
  }

  .el-main {
    width: 45% !important;
    padding: 0 0 0 50px;
    position: relative;
    overflow: hidden;
  }

  .el-main form {
    position: absolute;
    width: 524px;
    top: 188px;
    left: 40px;
  }

  .el-aside {
    width: 55% !important;
    color: white;
    font-size: 38px;
    font-weight: 600;
    padding-bottom: 24px;
    position: relative;
    overflow: hidden;
  }

  .el-aside div {
    display: flex;
    flex-flow: column;
    align-items: center;
    border-right: 2px solid white;
    width: 550px;
    position: absolute;
    top: 183px;
    right: 12px;
  }

  .el-aside img {
    width: 114px;
    height: 114px;
  }

  .el-aside p {
    padding: 0;
    margin-bottom: 0;
  }

  .login-image {
    background-image: url(../assets/login/login_bg.png);
    background-size: 100% 100%;
  }

  .el-footer {
    display: flex;
    justify-content: center;
  }

  .el-footer ul {
    color: white;
    list-style: none;
    padding: 0;
    font-size: 13px;
  }

  .el-footer ul li {
    text-align: left;
    line-height: 24px;
  }

  .loginClass >>> .el-form-item__label,
  .el-form >>> .el-form-item__label {
    color: #fff;
  }

  .yzCode {
    height: 30px;
    /*vertical-align: middle;*/
    position: absolute;
    top: 20%;
    right: 10%;
  }

  .Main {
    width: 100%;
    height: 100%;
  }

  .main {
    width: 100%;
    height: 100%;
    margin-top: 2%;
    /* display: flex; */
    /* justify-content: center; */
  }

  .mainLeft, .mainRight {
    width: 31%;
    height: 50%;
  }

  .logo {
    width: 100%;
    text-align: center;
  }

  .logo img {
    width: 100px;
  }

  .headline {
    text-align: center;
    margin-top: 5%;
  }

  .headline img {
    width: 350px;
  }

  .bjnews, .app {
    width: 140px;
    height: 35px;
    background: #3057c7;
    border-radius: 5px;
    margin: 0px 10px;
    text-align: center;
    line-height: 35px;
    font-size: 13px;
    cursor: pointer
  }

  .quickMark {
    display: flex;
    justify-content: center;
    margin-top: 7%;
    color: white;
    font-size: 14px;
  }

  .login-box {
    width: 300px;
    height: 350px;
    /* background-image: url(../assets/login/dly.png); */
    background-size: 100%;
  }

  .mainRight {
    display: flex;
    justify-content: center;
  }

  .el-form-item {
    margin-bottom: 22px;
    text-align: center;
  }

  .welcome {
    font-size: 14px;
    margin-top: 2%;
    color: #4084d5;
  }

  .el-form >>> .el-input__inner {
    height: 50px;
    line-height: 50px;
    background-color: rgba(255, 255, 255, 1);
    padding: 0 20px 0 48px;
    color: #919191;
  }

  .loginClass {
    padding-top: 10%;
  }

  .bottom {
    position: absolute;
    bottom: 4%;
    width: 100%;
    text-align: center;
    color: white;
    font-size: 14px;
  }

  .bottom a {
    text-decoration: none;
    color: white;
  }

  .bottom a:hover {
    color: #333333;
  }

  .userName, .password, .verificationCode {
    width: 28px;
    height: 28px;
    position: absolute;
    z-index: 1;
    top: 26%;
    left: 4%;
  }

  .bjnews, .app {
    position: relative;
    display: flex;
    justify-content: center;
  }

  .bjnews img.ewm1, .app img.ewm2 {
    position: absolute;
    z-index: 99;
    top: 37px;
    left: 2px;
    /*right: 0px;*/
    width: 8.6rem;
    max-width: none;
    height: 8.6rem;
    transform: scale(0);
    transform-origin: top;
    opacity: 0;
    /*border: .3125rem solid #0085ba;*/
    /*border: 1px solid #3343c3;*/
    border-radius: .25rem;
    -webkit-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
  }

  .bjnews:hover img.ewm1, .app:hover img.ewm2 {
    transform: scale(1);
    opacity: 1;
  }

  .bjnews:hover, .app:hover {
    color: #333333;
  }

  .headlineTitle {
    font-size: 35px;
    /*color: white;*/
    font-weight: bold;
    font-family: helvetica;
    text-align: center;
    background: -webkit-linear-gradient(top, #f4f3fb, #9d9da5); /* 背景色渐变 */
    -webkit-background-clip: text; /* 规定背景的划分区域 */
    -webkit-text-fill-color: transparent; /* 防止字体颜色覆盖 */
  }

  .enTitle {
    color: #a0cff0;
    font-size: 17px;
  }

  .login-title {
    margin-bottom: 30px;
    line-height: 100%;
    font-size: 32px;
    color: #fff;
    text-align: center;
  }

  .login-main {
    width: 385px;
    padding: 36px 50px;
    padding-bottom: 14px;
    position: relative;
    background: rgba(255, 255, 255, 0.15);
    box-shadow: 0px 0px 8px 0px rgba(246, 18, 45, 0.09);
    border-radius: 3px;
    margin: 0px auto;
    box-sizing: border-box
  }

  .login-logo {
    width: 125px;
    margin: 0 auto 25px
  }

  .login-info {
    width: 100%;
  }

  .login-form {
    position: relative;
    height: 100%;
    width: 100%;
  }

  .inpt-btn {
    width: 100%;
    height: 50px;
    padding: 0px;
    line-height: 50px;
    background: #2EBEFF;
    border: none;
    box-shadow: 0px 5px 13px 0px rgba(47, 32, 6, 0.28);
    font-size: 24px;
    border-radius: 4px;
    color: #fff;
  }

  .inpt-btn:hover {
    background: rgba(46, 190, 255, 0.8);
    color: #fff
  }

  .inpt-btn:focus, .inpt-btn:focus:active, .inpt-btn:visited {
    background: #2EBEFF;
    color: #fff;
  }

  @font-face {
    /* font-test*/
    font-family: tonjay;
    src: url('../assets/font/fzzyt.ttf')
  }

</style>
