package com.julius.law.config;

import com.julius.law.lawcase.service.ILawcaseService;
import com.julius.law.project.service.IProjectService;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * date: 2021/1/6
 * time: 17:03
 *
 * @author:julius.zhu
 * @describe:Webmvc全局配置
 */
@Configuration
public class MyWebMvcConfig implements WebMvcConfigurer {
    public MyWebMvcConfig(ILawcaseService lawcaseService, IProjectService projectService) {
        this.lawcaseService = lawcaseService;
        this.projectService = projectService;
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        //对哪种格式的请求进行跨域处理,/**表示所有
        registry.addMapping("/**")
                .allowedMethods("GET", "POST", "DELETE", "PUT", "OPTIONS")
                .allowedOrigins("*");//表示支持来自的域
    }

    private final ILawcaseService lawcaseService;
    private final IProjectService projectService;

    /**
     * 循环任务,周一到周日 每隔5分钟执行一次
     * 执行恢复数据表任务
     */
    @Scheduled(cron = "* 5 * * *  MON-SUN")
    public void resetTable() {
        lawcaseService.resetTable();
        projectService.resetTable();
    }
}
