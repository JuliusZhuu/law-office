package com.julius.law.lawcase.service;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawassist;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 辅助人员信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
public interface ILawassistService extends IService<Lawassist> {

    void insert(JSONArray jsonArray, Long id);
}
