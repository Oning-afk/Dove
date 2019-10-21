package com.future.shiro.config;

import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.mgt.SecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @program: dove-parent
 * @description: shiro配置
 * @author: 邓希凡
 * @create: 2019-10-18 20:34
 **/
@Configuration
public class ShiroConfig {

    @Bean
    public MyShiroRealm myShiroRealm() {
        MyShiroRealm myShiroRealm = new MyShiroRealm();
        return myShiroRealm;
    }


    @Bean
    public SecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        /* 设置realm. */
        securityManager.setRealm(myShiroRealm());
        return securityManager;
    }

    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager){
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        //必须设置 SecurityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);
         // 登录
        shiroFilterFactoryBean.setLoginUrl("/login");
         // 设置无权限时跳转的 ur
         shiroFilterFactoryBean.setUnauthorizedUrl("/403");
         // 设置拦截器
         Map<String,String> map = new LinkedHashMap<String, String>();
         map.put("/js/**","anon");
         map.put("/css/**","anon");

         // 开放登陆接口

         // 登出
         map.put("/logout","logout");
         // 对所有用户认证
         map.put("/**","authc");
         shiroFilterFactoryBean.setFilterChainDefinitionMap(map);
         return shiroFilterFactoryBean;
    }

    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
         authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
   }


}
