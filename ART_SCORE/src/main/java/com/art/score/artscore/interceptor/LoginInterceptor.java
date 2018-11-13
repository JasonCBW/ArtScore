package com.art.score.artscore.interceptor;

import com.art.score.artscore.vo.Sys_user;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Slf4j
@PropertySource("classpath:conf/config.properties")
@Component
public class LoginInterceptor implements HandlerInterceptor {

    @Value("${login_info}")
    private String sessionName;

    //公开访问的的URL
    List<String> authList = new ArrayList<String>(Arrays.asList("/login", "/loginValidata"));

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        //获取请求的RUi:去除http:localhost:8080这部分剩下的
        String url = httpServletRequest.getRequestURI();
        //UTL:除了login是可以公开访问的，其他的URL都进行拦截控制
//        for (String str : authList) {
//            if (url.indexOf(str) >= 0)
//                return true;
//        }
//        Sys_user user = (Sys_user) session.getAttribute(sessionName);
//        if (user != null) {
//            return true;
//        } else {
//            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/login");
//            return false;
//        }
         return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
    }
}
