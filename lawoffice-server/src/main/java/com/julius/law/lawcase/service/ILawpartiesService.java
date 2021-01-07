package com.julius.law.lawcase.service;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawparties;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 当事人信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
public interface ILawpartiesService extends IService<Lawparties> {

    /**
     * 添加案件的当事人信息
     *
     * @param jsonArray 多个当事人信息组成的对象json串
     * @param id        案件id
     */
    void insert(JSONArray jsonArray, Integer id);
}
