package com.min.guestbook;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "com.min.guestbook")
public class AppConfig {

}
