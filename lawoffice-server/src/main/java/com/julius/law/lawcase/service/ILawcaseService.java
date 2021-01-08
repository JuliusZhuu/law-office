package com.julius.law.lawcase.service;

import com.julius.law.config.ResponseEntity;
import com.julius.law.lawcase.entity.Lawcase;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * <p>
 * 案件信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
public interface ILawcaseService extends IService<Lawcase> {

    ResponseEntity insert(String lawInfo);


    /**
     * 根据id删除一条信息
     *
     * @param id
     * @return
     */
    ResponseEntity delete(Long id);

    /**
     * 查询所有案件信息
     *
     * @param currentPage 当前页
     * @param pageSize    每页显示数量
     * @return
     */
    ResponseEntity listLawCases(Integer currentPage, Integer pageSize);

    void resetTable();

}
