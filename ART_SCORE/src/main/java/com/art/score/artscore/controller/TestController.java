package com.art.score.artscore.controller;

import com.art.score.artscore.annotation.Log;
import com.art.score.artscore.enumvo.LogTypeEnum;
import com.art.score.artscore.service.TestService;
import com.art.score.artscore.vo.ResVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
@Slf4j
public class TestController {

    @Autowired
    TestService testService;

    @RequestMapping("/test")
    @Log(value = "测试模块",type = LogTypeEnum.PAY)
    public ResVo query(){
        //log.info("test{}");
        return  testService.getList();
    }

}
