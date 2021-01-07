package com.julius.law.lawcase.mapper;

import com.julius.law.lawcase.entity.Lawparties;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 当事人信息表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Repository
public interface LawpartiesMapper extends BaseMapper<Lawparties> {

    /**
     * 批量插入当事人信息
     *
     * @param lawparties 当事人信息
     * @param id 案件id
     */
    void insertBatch(@Param("lawparties") List<Lawparties> lawparties,
                     @Param("id") Integer id);
}
