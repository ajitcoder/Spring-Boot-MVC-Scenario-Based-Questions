package com.ajit.configure;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ajit.interceptor.AuthInterceptor;
import com.ajit.interceptor.LoggingInterceptor;

@Configuration
public class MyWebMvcConfigurer implements WebMvcConfigurer{

	 @Override
	    public void addInterceptors(InterceptorRegistry registry) {

	        // Authentication interceptor
	        registry.addInterceptor(new AuthInterceptor())
	                .addPathPatterns("/dashboard")
	                .excludePathPatterns("/login");

	        // Logging interceptor (apply everywhere)
	        registry.addInterceptor(new LoggingInterceptor())
	                .addPathPatterns("/**");
	    }
}