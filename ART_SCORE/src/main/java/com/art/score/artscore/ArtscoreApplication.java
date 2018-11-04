package com.art.score.artscore;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement//启动事务注解
@MapperScan("com.art.score.artscore.mapper")
public class ArtscoreApplication {

    public static void main(String[] args) {
        SpringApplication.run(ArtscoreApplication.class, args);
    }
}
