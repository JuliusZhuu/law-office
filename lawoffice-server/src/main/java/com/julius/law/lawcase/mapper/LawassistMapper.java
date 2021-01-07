package com.julius.law.lawcase.mapper;

import com.julius.law.lawcase.entity.Lawassist;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 辅助人员信息表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Repository
public interface LawassistMapper extends BaseMapper<Lawassist> {

    void insertBatch(@Param("lawassists") List<Lawassist> lawassists,
                     @Param("id") Integer id);
}
