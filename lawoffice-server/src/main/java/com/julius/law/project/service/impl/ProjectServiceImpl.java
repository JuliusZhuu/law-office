package com.julius.law.project.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.julius.law.config.PageInfo;
import com.julius.law.config.ResponseEntity;
import com.julius.law.lawcase.entity.Lawcase;
import com.julius.law.project.entity.Project;
import com.julius.law.project.entity.Projectconcat;
import com.julius.law.project.mapper.ProjectMapper;
import com.julius.law.project.service.IProjectService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.julius.law.project.service.IProjectconcatService;
import io.swagger.models.auth.In;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        if (jsonArray.getJSONArray(1).size() > 0) {
            projectconcatService.insert(jsonArray.getJSONArray(1), object.getId());
        }
        return new ResponseEntity(200, "添加成功", null);
    }

    @Override
    public ResponseEntity listProjects(Integer currentPage, Integer pageSize) {
        //查询项目的基本信息
        IPage<Project> pageInfo = new Page<>(currentPage, pageSize);
        List<Project> projects = projectMapper.selectPageProjectInfo(pageInfo, null);
        Map<String, Object> map = new HashMap<>();
        map.put("tableData", projects);
        map.put("pageInfo", new PageInfo(currentPage, pageSize, pageInfo.getTotal()));
        return new ResponseEntity(200, "返回成功", map);
    }

    @Override
    public ResponseEntity delete(Long id) {
        Project project = new Project();
        project.setId(id);
        project.setDeleteStatus("1");
        projectMapper.updateById(project);
        return new ResponseEntity(200, "成功", null);
    }

    @Override
    public void resetTable() {
        projectMapper.resetTable();
    }
}
