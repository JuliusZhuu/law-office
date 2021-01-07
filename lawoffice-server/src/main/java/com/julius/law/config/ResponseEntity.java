package com.julius.law.config;

import lombok.Data;

/**
 * date: 2021/1/6
 * time: 17:14
 *
 * @author:julius.zhu
 * @describe:响应请求json的实体
 */
@Data
public class ResponseEntity {
    /**
     * 状态码
     */
    private Integer status;
    /**
     * 内容
     */
    private String message;
    /**
     * 任意类型的数据,可选
     */
    private Object data;

    public ResponseEntity(Integer status, String message, Object data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

}

