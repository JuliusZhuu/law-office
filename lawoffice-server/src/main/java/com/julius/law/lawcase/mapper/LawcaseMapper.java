package com.julius.law.lawcase.mapper;

import com.julius.law.lawcase.entity.Lawcase;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 案件信息表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Repository
public interface LawcaseMapper extends BaseMapper<Lawcase> {

}
