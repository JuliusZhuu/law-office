package com.julius.law.project.mapper;

import com.julius.law.project.entity.Projectconcat;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 项目信息联系人表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@Repository
public interface ProjectconcatMapper extends BaseMapper<Projectconcat> {

    /**
     * 批量添加联系人数据
     *
     * @param projectConcats
     * @param projectId
     */
    void insertBatch(@Param("projectConcats") List<Projectconcat> projectConcats,
                     @Param("projectId") Integer projectId);
}
