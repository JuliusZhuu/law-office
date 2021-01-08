package com.julius.law.project.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.lawcase.entity.Lawhear;
import com.julius.law.project.entity.Projectconcat;
import com.julius.law.project.mapper.ProjectconcatMapper;
import com.julius.law.project.service.IProjectconcatService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 项目信息联系人表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@Service
@Primary
public class ProjectconcatServiceImpl extends ServiceImpl<ProjectconcatMapper, Projectconcat> implements IProjectconcatService {
    private final ProjectconcatMapper projectconcatMapper;

    public ProjectconcatServiceImpl(ProjectconcatMapper projectconcatMapper) {
        this.projectconcatMapper = projectconcatMapper;
    }

    @Override
    public void insert(JSONArray jsonArray, Long id) {
        List<Projectconcat> projectconcats = stringToConcat(jsonArray);
        projectconcatMapper.insertBatch(projectconcats, id);
    }

    /**
     * 将多个联系人员信息json串转为实体
     *
     * @param jsonArray
     * @return
     */
    private List<Projectconcat> stringToConcat(JSONArray jsonArray) {
        List<Projectconcat> projectconcats = new ArrayList<>();
        for (int i = 0; i < jsonArray.size(); i++) {
            projectconcats.add(jsonArray.getObject(i, Projectconcat.class));
        }
        return projectconcats;
    }
}
