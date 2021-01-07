package com.julius.law.lawcase.service;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawhear;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 审理人员信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
public interface ILawhearService extends IService<Lawhear> {

    void insert(JSONArray jsonArray, Integer id);
}
