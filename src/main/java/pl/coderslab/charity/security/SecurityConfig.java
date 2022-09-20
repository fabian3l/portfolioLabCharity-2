package pl.coderslab.charity.security;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation
        .web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter{

    public BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user1")
                .password("$2a$12$qWleiKXzmDcIPkeLoyq0QOwlyJBQ5IZ8KlzyjPaj0Hm18qDGH0U/a")
                .roles("USER")
                .and()
                .withUser("admin1")
                .password("$2a$12$O6LE3hehHrTxYR6m8SyWu.OMhNtBmmf1HolOpOpP0VzcTF.ZYv6Ty")
                .roles("ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").authenticated()
                .antMatchers("/user").hasAnyRole("USER", "ADMIN")
                .antMatchers("/admin").hasRole("ADMIN")
                .and()
                .formLogin().loginPage("/login")
                .defaultSuccessUrl("/add_donation")
                .and()
                .logout().logoutSuccessUrl("/")
                .permitAll()
                .and().exceptionHandling().accessDeniedPage("/403");
    }


}
