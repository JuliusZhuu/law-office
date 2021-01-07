package com.julius.law.lawcase.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawhear;
import com.julius.law.lawcase.mapper.LawhearMapper;
import com.julius.law.lawcase.service.ILawhearService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 审理人员信息表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Service
@Primary
public class LawhearServiceImpl extends ServiceImpl<LawhearMapper, Lawhear> implements ILawhearService {

    private final  LawhearMapper lawhearMapper;

    public LawhearServiceImpl(LawhearMapper lawhearMapper) {
        this.lawhearMapper = lawhearMapper;
    }

    /**
     * 将多个审理人员信息json串转为实体
     *
     * @param jsonArray
     * @return
     */
    private List<Lawhear> stringToLawHears(JSONArray jsonArray) {
        List<Lawhear> lawhears = new ArrayList<>();
        for (int i = 0; i < jsonArray.size(); i++) {
            lawhears.add(jsonArray.getObject(i, Lawhear.class));
        }
        return lawhears;
    }
    @Override
    public void insert(JSONArray jsonArray, Integer id) {
        List<Lawhear> lawhears = stringToLawHears(jsonArray);
        lawhearMapper.insertBatch(lawhears,id);
    }
}
