package com.julius.law.client.service;

import com.julius.law.client.entity.Client;
import com.baomidou.mybatisplus.extension.service.IService;
import com.julius.law.config.ResponseEntity;

/**
 * <p>
 * 客户信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-09
 */
public interface IClientService extends IService<Client> {

    /**
     * 添加一条客户信息
     *
     * @param client
     * @return
     */
    ResponseEntity insert(Client client);

    /**
     * 查询所有客户信息
     *
     * @param currentPage 当前页
     * @param pageSize    每页显示条数
     * @return
     */
    ResponseEntity listClients(Integer currentPage, Integer pageSize);

    ResponseEntity delete(Long id);

    void resetTable();

}
