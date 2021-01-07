package com.julius.law.project.service;

import com.julius.law.config.ResponseEntity;
import com.julius.law.project.entity.Project;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 项目信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
public interface IProjectService extends IService<Project> {

    ResponseEntity insert(String data);
}
