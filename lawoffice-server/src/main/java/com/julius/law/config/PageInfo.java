package com.julius.law.config;

import io.swagger.models.auth.In;
import lombok.Data;

/**
 * date: 2021/1/8
 * time: 11:01
 *
 * @author:julius.zhu
 * @describe: 分页信息对象
 */
@Data
public class PageInfo {
    /**
     * 当前页
     */
    private Integer currentPage;
    /**
     * 每页显示条数
     */
    private Integer pageSize;
    /**
     * 总条数
     */
    private Long total;

    public PageInfo(Integer currentPage, Integer pageSize, Long total) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.total = total;
    }
}
