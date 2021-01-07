package com.julius.law.lawcase.mapper;

import com.julius.law.lawcase.entity.Lawhear;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.julius.law.lawcase.entity.Lawparties;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 审理人员信息表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Repository
public interface LawhearMapper extends BaseMapper<Lawhear> {

    /**
     * 批量插入审理人员信息
     *
     * @param lawHears 审理人员信息
     * @param id 案件id
     */
    void insertBatch(@Param("lawHears") List<Lawhear> lawHears,
                     @Param("id") Long id);
}
