package com.julius.law.client.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.julius.law.client.entity.Client;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.julius.law.project.entity.Project;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 客户信息表 Mapper 接口
 * </p>
 *
 * @author julius
 * @since 2021-01-09
 */
@Repository
public interface ClientMapper extends BaseMapper<Client> {
    /**
     * 查询所有的客户信息
     *
     * @param pageInfo 分页信息对象
     * @param o        后面可能会带条件
     * @return
     */
    List<Client> selectPageClientInfo(IPage<Client> pageInfo, Object o);

    @Update("update client set deleteStatus='0' ")
    void resetTable();

}
