package com.julius.law.project.service;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.project.entity.Projectconcat;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 项目信息联系人表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
public interface IProjectconcatService extends IService<Projectconcat> {

    /**
     * 添加一条联系人信息
     *
     * @param jsonArray 联系信息组成的json数组
     * @param id        项目id
     */
    void insert(JSONArray jsonArray, Integer id);
}
