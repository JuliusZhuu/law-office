package com.julius.law.project.controller;


import com.julius.law.config.ResponseEntity;
import com.julius.law.project.service.IProjectService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 项目信息表 前端控制器
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@RestController
@RequestMapping("/project/project")
public class ProjectController {

    private final IProjectService projectService;

    public ProjectController(IProjectService projectService) {
        this.projectService = projectService;
    }

    /**
     * 添加一条项目数据
     *
     * @param data 项目数据以及联系人组成的json串
     * @return
     */
    @PostMapping("insert")
    public ResponseEntity insert(@RequestBody String data) {
        return projectService.insert(data);
    }
}

