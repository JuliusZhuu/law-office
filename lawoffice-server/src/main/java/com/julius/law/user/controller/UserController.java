package com.julius.law.user.controller;


import com.julius.law.config.ResponseEntity;
import com.julius.law.user.entity.User;
import com.julius.law.user.service.IUserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 用户信息表 前端控制器
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@RestController
@RequestMapping("/user/user")
public class UserController {

    private final IUserService iUserService;
    public UserController(IUserService iUserService) {
        this.iUserService = iUserService;
    }

    /**
     * 用户登录
     *
     * @param user 用户信息实体
     * @return
     */
    @PostMapping("login")
    public ResponseEntity login(@RequestBody User user) {
        return iUserService.login(user);
    }
}


