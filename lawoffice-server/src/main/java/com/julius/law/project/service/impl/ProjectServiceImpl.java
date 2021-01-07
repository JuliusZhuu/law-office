package com.julius.law.project.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.julius.law.config.ResponseEntity;
import com.julius.law.project.entity.Project;
import com.julius.law.project.mapper.ProjectMapper;
import com.julius.law.project.service.IProjectService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.julius.law.project.service.IProjectconcatService;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>
 * 项目信息表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@Service
@Primary
@Transactional
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, Project> implements IProjectService {

    private final ProjectMapper projectMapper;
    private final IProjectconcatService projectconcatService;

    public ProjectServiceImpl(ProjectMapper projectMapper,
                              IProjectconcatService projectconcatService) {
        this.projectMapper = projectMapper;
        this.projectconcatService = projectconcatService;
    }

    @Override
    public ResponseEntity insert(String data) {
        JSONArray jsonArray = JSONArray.parseArray(data);
        Project object = jsonArray.getObject(0, Project.class);
        projectMapper.insert(object);
        //有联系人才会添加
        if (jsonArray.size() >1) {
            projectconcatService.insert(jsonArray.getJSONArray(1), object.getId());
        }
        return new ResponseEntity(200, "添加成功", null);
    }

}
