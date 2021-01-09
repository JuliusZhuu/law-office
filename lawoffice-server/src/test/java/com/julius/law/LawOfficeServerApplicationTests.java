package com.julius.law;

import com.baomidou.mybatisplus.core.exceptions.MybatisPlusException;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

@SpringBootTest
class LawOfficeServerApplicationTests {

    @Test
    public void contextLoads() {
        createModule("client", new String[]{"client"});
    }

    /**
     * 自动创建模快
     *
     * @param moduleName 生成模块名称
     * @param tableName  逆向工程表名称,多个表使用,分隔
     */
    void createModule(String moduleName, String[] tableName) {
        //代码生成器
        AutoGenerator mpg = new AutoGenerator();
        //全局配置
        GlobalConfig gc = new GlobalConfig();
        //获取当前项目的路径
        String projectPath = System.getProperty("user.dir");
        //拼接路径,拼接到java目录下
        gc.setOutputDir(projectPath + "/src/main/java");
        //设置作者信息
        gc.setAuthor("julius");
        //是否打开输出目录,默认值为true
        gc.setOpen(false);
        //第二次生成会把第一次生成覆盖掉
        gc.setFileOverride(false);
        //实体属性 Swagger2 注解
        gc.setSwagger2(true);
        mpg.setGlobalConfig(gc);

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        //配置url
        dsc.setUrl("jdbc:mysql://192.168.1.123:3306/law");
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("123456");
        mpg.setDataSource(dsc);

        // 包配置
        PackageConfig pc = new PackageConfig();
        //模块名称
        pc.setModuleName(moduleName);
        //设置父包
        pc.setParent("com.julius.law");
        mpg.setPackageInfo(pc);

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        strategy.setEntityLombokModel(true);
        strategy.setRestControllerStyle(true);
        strategy.setInclude(tableName);
        strategy.setControllerMappingHyphenStyle(true);
        mpg.setStrategy(strategy);
        mpg.execute();

    }

}
