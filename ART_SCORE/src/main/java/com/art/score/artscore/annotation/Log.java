package com.art.score.artscore.annotation;

import com.art.score.artscore.enumvo.LogTypeEnum;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Log {

    String value() default "";

    LogTypeEnum type() default LogTypeEnum.LOG;


}
