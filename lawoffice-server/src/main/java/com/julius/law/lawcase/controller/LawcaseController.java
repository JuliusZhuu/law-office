package com.julius.law.lawcase.controller;


import com.julius.law.config.ResponseEntity;
import com.julius.law.lawcase.service.ILawcaseService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 案件信息表 前端控制器
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@RestController
@RequestMapping("/lawcase/lawcase")
public class LawcaseController {

    private final ILawcaseService iLawcaseService;

    public LawcaseController(ILawcaseService iLawcaseService) {
        this.iLawcaseService = iLawcaseService;

    }

    /**
     * 添加一条案件信息
     *
     * @param lawInfo 案件信息组成的json字符串
     * @return 添加结果
     */
    @PostMapping("insert")
    public ResponseEntity insert(@RequestBody  String lawInfo) {
        return iLawcaseService.insert(lawInfo);
    }
}

