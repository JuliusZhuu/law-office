package com.julius.law.client.controller;


import com.julius.law.client.entity.Client;
import com.julius.law.client.service.IClientService;
import com.julius.law.config.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 客户信息表 前端控制器
 * </p>
 *
 * @author julius
 * @since 2021-01-09
 */
@RestController
@RequestMapping("/client/client")
public class ClientController {

    private final IClientService clientService;

    public ClientController(IClientService clientService) {
        this.clientService = clientService;
    }

    /**
     * 添加一条客户信息
     *
     * @param client 客户信息对象
     * @return
     */
    @PostMapping("insert")
    public ResponseEntity insert(@RequestBody Client client) {
        return clientService.insert(client);
    }

    /**
     * 查询所有客户信息
     *
     * @param currentPage 当前页
     * @param pageSize    每页显示条数
     * @return
     */
    @GetMapping("list")
    public ResponseEntity list(@RequestParam("currentPage") Integer currentPage,
                               @RequestParam("pageSize") Integer pageSize) {
        //此处应该获取当前登录用户的信息,根据当前登录用户进行获取
        return clientService.listClients(currentPage, pageSize);
    }

    /**
     * 根据id删除一条信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("delete")
    public ResponseEntity delete(@RequestParam Long id) {
        return clientService.delete(id);
    }

    /**
     * 更新客户信息
     *
     * @param client 客户信息对象
     * @return
     */
    @PutMapping("update")
    public ResponseEntity update(@RequestBody Client client) {

        return null;
    }
}

