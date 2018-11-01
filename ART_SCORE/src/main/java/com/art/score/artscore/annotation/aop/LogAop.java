package com.art.score.artscore.annotation.aop;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.annotation.Log;
import com.art.score.artscore.mapper.LogMapper;
import com.art.score.artscore.vo.LogVo;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Aspect
@Component
public class LogAop {

    @Autowired
    LogMapper logMapper;

    @Pointcut("@annotation(com.art.score.artscore.annotation.Log)")
    public void log() {

    }

    @Before("log()")
    public void MDCSet(JoinPoint joinPoint) {
        try {
            MethodSignature signature = (MethodSignature) joinPoint.getSignature();
            Method method = signature.getMethod();
            Log log = method.getAnnotation(Log.class);
            String className = joinPoint.getTarget().getClass().getName();//访问类名
            String methodName = signature.getName();//获取方法位置
            Object[] args = joinPoint.getArgs();
            List<String> paramsName = Arrays.asList(((MethodSignature) joinPoint.getSignature()).getParameterNames());
            JSONObject params = paramsToJSON(args, paramsName);//参数

            LogVo logVo = new LogVo();
            //用户,token,userid暂时写死.没有继承SDK
            logVo.setUser("test");
            logVo.setUserId("1");
            logVo.setToken("testsdkTOken");
            logVo.setParams(params.toString());
            logVo.setClassName(className);
            logVo.setMethod(methodName);
            logVo.setCreateTime(new Date());
            logVo.setModular(log.value());
            //扩展参数
            logVo.setParam1("");
            logVo.setParam2("");
            logVo.setParam3("");
            logVo.setParam4("");
            logVo.setParam5("");

            //判断日志类型插入不同的log表,根绝业务需要配置枚举,如果不需要可以把switch干掉
            switch (log.type().toString()) {
                case "PAY":
                    logMapper.saveLog(logVo);
                    break;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    //转换成json
    private JSONObject paramsToJSON(Object[] params, List<String> paramsName) {
        JSONObject res = new JSONObject();
        for (int i = 0; i < paramsName.size(); i++) {
            res.put(paramsName.get(i), params[i]);
        }
        return res;
    }

}




