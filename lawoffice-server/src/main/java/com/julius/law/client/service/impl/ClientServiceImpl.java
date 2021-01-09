package com.julius.law.client.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.julius.law.client.entity.Client;
import com.julius.law.client.mapper.ClientMapper;
import com.julius.law.client.service.IClientService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.julius.law.config.PageInfo;
import com.julius.law.config.ResponseEntity;
import com.julius.law.project.entity.Project;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 客户信息表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-09
 */
@Service
@Primary
public class ClientServiceImpl extends ServiceImpl<ClientMapper, Client> implements IClientService {

    private final ClientMapper clientMapper;

    public ClientServiceImpl(ClientMapper clientMapper) {
        this.clientMapper = clientMapper;
    }

    @Override
    public ResponseEntity insert(Client client) {
        clientMapper.insert(client);
        return new ResponseEntity(200, "成功", null);
    }

    @Override
    public ResponseEntity listClients(Integer currentPage, Integer pageSize) {
        //查询客户的基本信息
        IPage<Client> pageInfo = new Page<>(currentPage, pageSize);
        List<Client> clientInfo = clientMapper.selectPageClientInfo(pageInfo, null);
        Map<String, Object> map = new HashMap<>();
        map.put("tableData", clientInfo);
        map.put("pageInfo", new PageInfo(currentPage, pageSize, pageInfo.getTotal()));
        return new ResponseEntity(200, "返回成功", map);
    }

    @Override
    public ResponseEntity delete(Long id) {
        Client client = new Client();
        client.setId(id);
        client.setDeleteStatus("1");
        clientMapper.updateById(client);
        return new ResponseEntity(200, "成功", null);
    }

    @Override
    public void resetTable() {
        clientMapper.resetTable();
    }
}
