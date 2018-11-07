package com.art.score.artscore.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.ModuleMapper;
import com.art.score.artscore.service.ModuleService;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_module;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModuleServiceImpl implements ModuleService {

    @Autowired
    ModuleMapper moduleMapper;

    @Override
    public PageVo getModulelist() {
        List<JSONObject> data = moduleMapper.queryList();
        return new PageVo(0, "", 1000, data);
    }

    @Override
    public ResVo getModuleByID(Integer id) {
        JSONObject obj = moduleMapper.queryByID(id);
        return new ResVo("suc", "操作成功", obj);
    }

    @Override
    public ResVo save(Sys_module module) {
        boolean flag = moduleMapper.save(module);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }

    @Override
    public ResVo update(Sys_module module) {
        boolean flag = moduleMapper.update(module);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }

    @Override
    public ResVo dels(String ids) {
        boolean flag = moduleMapper.deleteByIds(ids);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }

    @Override
    public List<JSONObject> getModuleTypes() {
        List<JSONObject> data = moduleMapper.queryModuleTypes();
        return data;
    }
}
