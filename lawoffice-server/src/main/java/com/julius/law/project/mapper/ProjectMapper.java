package com.julius.law.project.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.julius.law.project.entity.Project;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 项目信息表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@Repository
public interface ProjectMapper extends BaseMapper<Project> {
    /**
     * 列出所有项目信息
     *
     * @param pageInfo 分页信息对象
     * @param username 用户名
     * @return
     */
    List<Project> selectPageProjectInfo(IPage<Project> pageInfo, String username);
}
