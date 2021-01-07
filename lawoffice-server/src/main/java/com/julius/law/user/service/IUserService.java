package com.julius.law.user.service;

import com.julius.law.config.ResponseEntity;
import com.julius.law.user.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 用户信息表 服务类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
public interface IUserService extends IService<User> {
    /**
     * 用户登录
     * @param user 用户信息实体
     * @return
     */
    ResponseEntity  login(User user);
}
