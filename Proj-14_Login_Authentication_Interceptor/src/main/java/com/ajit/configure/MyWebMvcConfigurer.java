package com.ajit.configure;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ajit.interceptor.AuthInterceptor;

@Configuration
public class MyWebMvcConfigurer implements WebMvcConfigurer{

	@Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(new AuthInterceptor())
                .addPathPatterns("/dashboard")
                .excludePathPatterns("/login");
    }
}