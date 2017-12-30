package ru.isko.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.sql.DataSource;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@ComponentScan("ru.isko")
@EnableWebSecurity
public class WebSucurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/admin/**").hasAuthority("ADMIN")
                .antMatchers("/").permitAll()
                .antMatchers("/profile").permitAll()
                .antMatchers("/homepage").permitAll()
                .antMatchers("/promotions").permitAll()
                .antMatchers("/events/**").permitAll()
                .antMatchers("/get/applications").permitAll()
                .antMatchers("/files/**").permitAll()
                .antMatchers("/authorization/**").permitAll()
                .antMatchers("/successful/registration/**").permitAll()
                .antMatchers("/registration").permitAll()
                .antMatchers("/confirm/account/**").permitAll()
                .antMatchers("/menu").permitAll()
                .antMatchers("/restore/password").permitAll()
                .antMatchers("/contacts").permitAll()
                .antMatchers("/submit/application").permitAll()
                .antMatchers("/css/**").permitAll()
                .antMatchers("/font/**").permitAll()
                .antMatchers("/images/**").permitAll()
                .antMatchers("/js/**").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/authorization/enter")
                .usernameParameter("authEmail")
                .passwordParameter("authPassword")
                .defaultSuccessUrl("/homepage")
                .failureUrl("/authorization/enter?error")
                .permitAll()
                .and()
                .logout()
                .logoutUrl("/exit")
                .deleteCookies("remember-me")
                .logoutSuccessUrl("/homepage")
                .permitAll()
                .and()
                .rememberMe().rememberMeParameter("remember-me").tokenRepository(persistentTokenRepository())
                .tokenValiditySeconds(86400);

        http.csrf().disable();
    }

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl jdbcTokenRepository = new JdbcTokenRepositoryImpl();
        jdbcTokenRepository.setDataSource(dataSource);
        return jdbcTokenRepository;
    }
}
