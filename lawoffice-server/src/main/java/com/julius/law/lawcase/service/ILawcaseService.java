package com.julius.law.lawcase.service;

import com.julius.law.config.ResponseEntity;
import com.julius.law.lawcase.entity.Lawcase;
import com.baomidou.mybatisplus.extension.service.IService;

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
}
