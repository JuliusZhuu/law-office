package com.julius.law.user.service.impl;

import com.julius.law.config.ResponseEntity;
import com.julius.law.user.entity.User;
import com.julius.law.user.mapper.UserMapper;
import com.julius.law.user.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户信息表 服务实现类
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Service
@Primary//由于继承和实现关系,需要告诉spring实例化哪个bean
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {
    private final UserMapper userMapper;

    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public ResponseEntity login(User user) {
        User userByUerName = userMapper.getUserByUerName(user.getUsername());
        if (userByUerName != null) {
            if (userByUerName.getPassword().equals(user.getPassword())) {
                return new ResponseEntity(200, "登录成功", null);
            } else {
                return new ResponseEntity(401, "用户名或者密码错误", null);
            }
        }
        return new ResponseEntity(402, "用户不存在,请检查", null);
    }
}
