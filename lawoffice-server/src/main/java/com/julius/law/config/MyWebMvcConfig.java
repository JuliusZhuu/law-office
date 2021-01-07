package com.julius.law.config;

import org.springframework.context.annotation.Configuration;
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
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        //对哪种格式的请求进行跨域处理,/**表示所有
        registry.addMapping("/**")
                .allowedOrigins("*");//表示支持来自的域
    }
}
