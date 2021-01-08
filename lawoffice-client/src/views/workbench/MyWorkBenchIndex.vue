<template>
  <!--我的工作台-->
  <div>
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>我的工作台</el-breadcrumb-item>
    </el-breadcrumb>
    <div class="tips">
      <el-row>
        <el-col :span="12">
          <div style="font-weight: bold">
            “ 冰雪正在消融，希望就在眼前。”
          </div>
        </el-col>
        <el-col :span="4">
          <div class="on-case">
            在办案件/项目(件)
          </div>
        </el-col>
        <el-col :span="4">
          <div class="save-case">
            归档案件/项目(件)
          </div>
        </el-col>
        <el-col :span="4">
          <div class="save-times">
            已记录工时(时)
          </div>
        </el-col>
      </el-row>
    </div>
    <el-divider/>
    <el-container>
      <el-aside width="70%">
        <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal"
                 @select="handleSelect">
          <el-menu-item index="1">我的在办案件</el-menu-item>
          <el-menu-item index="2">我的在办项目</el-menu-item>
          <el-menu-item index="3">我的待办任务</el-menu-item>
        </el-menu>
        <div v-if="activeIndex==='1'">
          <el-card shadow="hover" v-for="(item,index) in testCase" :key="index">
            {{item.title}}
          </el-card>
        </div>
        <div v-else-if="activeIndex==='2'">
          <el-card shadow="hover" v-for="(item,index) in testProject" :key="index">
            {{item.title}}
          </el-card>
        </div>
        <div v-else-if="activeIndex==='3'">
          <el-card shadow="hover" v-for="(item,index) in testTask" :key="index">
            {{item.title}}
          </el-card>
        </div>
        <el-divider/>
        <div class="side-notice">
          <i class="iconfont icongonggao-copy"></i>法院业务公告
          <el-divider/>
          <el-card shadow="hover" v-for="(item,index) in testNotice" :key="index">
            {{item.title}}
          </el-card>
          <el-link :underline="false" class="el-link-more">查看更多<i class="iconfont iconmore"></i></el-link>
        </div>
      </el-aside>
      <el-main class="dynamic-main">
        动态
        <p>
          <el-card shadow="hover" v-for="(item,index) in testDynamic" :key="index">
            {{item.title}} {{item.createTime}}
          </el-card>
          <el-link :underline="false" class="el-link-more">查看更多<i class="iconfont iconmore"></i></el-link>
        </p>
      </el-main>
    </el-container>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        //测试案件内容
        testCase: [
          {title: '测试案件1'},
          {title: '测试案件2'},
          {title: '测试案件3'},
          {title: '测试案件4'},
        ],
        testProject: [
          {title: '测试项目1'},
          {title: '测试项目2'},
          {title: '测试项目3'},
          {title: '测试项目4'},
        ],
        testTask: [
          {title: '测试任务1'},
          {title: '测试任务2'},
          {title: '测试任务3'},
          {title: '测试任务4'},
        ],
        testDynamic: [
          {title: 'julius创建了项目:aaaaa', createTime: '50分钟前'},
          {title: 'julius创建了项目:aaaaa', createTime: '20分钟前'},
          {title: 'julius创建了项目:aaaaa', createTime: '10分钟前'},
          {title: 'julius创建了项目:aaaaa', createTime: '3分钟前'},
        ],
        testNotice: [
          {title: '我院定于2021-01-15 08:40:00在金华市中级人民法院开庭审理原告中国黄金集团黄金珠宝股份有限公司诉被告浦江县龙飞凤珠宝店侵害商标权纠纷一案\n'},
          {title: '我院定于2021-01-14 08:40:00在金华市中级人民法院开庭审理原告泉州市如果家居工艺有限公司诉被告浦江蒲韩工艺品有限公司著作权权属、侵权纠纷一案\n'},
          {title: '我院定于2021-01-14 14:00:00在嘉善县人民法院开庭审理原告嘉兴鑫铭行房地产经纪有限公司诉被告昆山淀山湖庄园房地产发展'},
          {title: '我院定于2021-01-13 14:00:00在德清县人民法院开庭审理原告费海峰诉被告徐洪兵民间借贷纠纷一案'},
          {title: '我院定于2021-01-13 14:30:00在绍兴市越城区人民法院开庭审理原告陶阿任,沈萍诉被告沈爱文,沈伟康,沈伟民继承纠纷一案'}
        ],
        activeIndex: '1'
      }
    },
    created() {

    },
    methods: {
      handleSelect(index) {
        this.activeIndex = index;
      }
    }
  }
</script>

<style scoped>
  .tips {
    margin-top: 20px;
  }

  .side-notice {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;

  }

  .el-link-more {
    margin-top: 10px;
    text-align: center;
    display: block;
  }

  .dynamic-main {
    text-align: center;
  }
</style>


