package com.julius.law.lawcase.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawparties;
import com.julius.law.lawcase.mapper.LawpartiesMapper;
import com.julius.law.lawcase.service.ILawpartiesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 当事人信息表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Service
@Primary
public class LawpartiesServiceImpl extends ServiceImpl<LawpartiesMapper, Lawparties> implements ILawpartiesService {
    private final LawpartiesMapper lawpartiesMapper;

    public LawpartiesServiceImpl(LawpartiesMapper lawpartiesMapper) {
        this.lawpartiesMapper = lawpartiesMapper;
    }

    @Override
    public void insert(JSONArray jsonArray, Long id) {
        List<Lawparties> lawparties = stringToLawParties(jsonArray);
        lawpartiesMapper.insertBatch(lawparties, id);
    }

    /**
     * 将多个当事人信息json串转为实体
     *
     * @param jsonArray
     * @return
     */
    private List<Lawparties> stringToLawParties(JSONArray jsonArray) {
        List<Lawparties> lawparties = new ArrayList<>();
        for (int i = 0; i < jsonArray.size(); i++) {
            lawparties.add(jsonArray.getObject(i, Lawparties.class));
        }
        return lawparties;
    }
}
