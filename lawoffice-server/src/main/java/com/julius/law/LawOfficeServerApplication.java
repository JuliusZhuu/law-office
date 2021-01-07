package com.julius.law;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.oas.annotations.EnableOpenApi;

@SpringBootApplication
//开启swagger支持
@EnableOpenApi
@MapperScan("com.julius.law")
public class LawOfficeServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(LawOfficeServerApplication.class, args);
    }

}
