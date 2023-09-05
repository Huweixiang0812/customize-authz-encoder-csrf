package com.example.customizeauthz;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import sun.security.util.Password;
import javax.annotation.Resource;

@SpringBootTest
public class GeneratePassword {
    @Resource
    PasswordEncoder passwordEncoder;
    @Test
    public void encoder(){
        System.out.println(passwordEncoder.encode("zhangsan"));
        System.out.println(passwordEncoder.encode("lisi"));
        System.out.println(passwordEncoder.encode("wangwu"));
    }
    @Test
    void contextLoads() {
    }
}