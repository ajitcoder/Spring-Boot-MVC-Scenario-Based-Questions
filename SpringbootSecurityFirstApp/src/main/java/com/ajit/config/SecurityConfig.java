package com.ajit.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.inMemoryAuthentication()
            .withUser("Ajit").password("{noop}rani").roles("CUSTOMER")
            .and()
            .withUser("Rakesh").password("{noop}hyd").roles("MANAGER");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http
            .authorizeRequests()
                .antMatchers("/", "/denied").permitAll()   // ✅ FIX 1
                .antMatchers("/offers").authenticated()
                .antMatchers("/balance").hasAnyRole("CUSTOMER", "MANAGER")
                .antMatchers("/loanApprove").hasRole("MANAGER")
                .anyRequest().authenticated()
            .and()
                .httpBasic()
            .and()
                .exceptionHandling().accessDeniedPage("/denied")
            .and()
                .csrf().disable();   // ✅ FIX 2
    }
}
