package com.julius.law.lawcase.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawassist;
import com.julius.law.lawcase.mapper.LawassistMapper;
import com.julius.law.lawcase.service.ILawassistService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 辅助人员信息表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Service
@Primary
public class LawassistServiceImpl extends ServiceImpl<LawassistMapper, Lawassist> implements ILawassistService {


    private final  LawassistMapper lawassistMapper;

    public LawassistServiceImpl(LawassistMapper lawassistMapper) {
        this.lawassistMapper = lawassistMapper;
    }

    private List<Lawassist> stringToLawAssist(JSONArray jsonArray) {
        List<Lawassist> lawAssists = new ArrayList<>();
        for (int i = 0; i < jsonArray.size(); i++) {
            lawAssists.add(jsonArray.getObject(i, Lawassist.class));
        }
        return lawAssists;
    }

    @Override
    public void insert(JSONArray jsonArray, Long id) {
        List<Lawassist> lawassists = stringToLawAssist(jsonArray);
        lawassistMapper.insertBatch(lawassists,id);
    }
}
