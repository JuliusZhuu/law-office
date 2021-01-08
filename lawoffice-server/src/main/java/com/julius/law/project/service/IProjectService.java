package com.julius.law.project.service;

import com.julius.law.config.ResponseEntity;
import com.julius.law.project.entity.Project;
import com.baomidou.mybatisplus.extension.service.IService;
import io.swagger.models.auth.In;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * <p>
 * 项目信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
public interface IProjectService extends IService<Project> {
    /**
     * 插入一条项目信息
     *
     * @param data 项目基本信息和联系人信息json串
     * @return
     */
    ResponseEntity insert(String data);

    /**
     * 列出所有项目信息
     *
     * @param currentPage 当前页
     * @param pageSize    每页显示条数
     * @return
     */
    ResponseEntity listProjects(Integer currentPage, Integer pageSize);

    /**
     * 删除一条项目信息
     *
     * @param id 项目id
     * @return
     */
    ResponseEntity delete(Long id);

    void resetTable();
}
