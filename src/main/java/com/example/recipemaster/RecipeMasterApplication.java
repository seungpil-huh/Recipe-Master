package com.example.recipemaster;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

@SpringBootApplication(scanBasePackages = {"cloud","com.example.*","data.*","controller.*","config"})
@MapperScan("data.mapper")
public class RecipeMasterApplication {

    public static void main(String[] args) {
        SpringApplication.run(RecipeMasterApplication.class, args);
    }

}
