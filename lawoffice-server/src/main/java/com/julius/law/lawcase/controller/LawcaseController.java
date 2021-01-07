package com.julius.law.lawcase.controller;


import com.julius.law.config.ResponseEntity;
import com.julius.law.lawcase.service.ILawcaseService;
import io.swagger.models.auth.In;
import org.springframework.web.bind.annotation.*;

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
    public ResponseEntity insert(@RequestBody String lawInfo) {
        return iLawcaseService.insert(lawInfo);
    }

    /**
     * 列出所有案件信息
     *
     * @param username    用户名
     * @param currentPage 当前页
     * @param count       每页显示数量
     * @return
     */
    @GetMapping("list")
    public ResponseEntity list(@RequestParam("username") String username,
                               @RequestParam("currentPage") Long currentPage,
                               @RequestParam("count") Long count) {
        return iLawcaseService.list(username, currentPage, count);
    }

    /**
     * 根据id删除一条信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("delete")
    public ResponseEntity delete(@RequestParam Long id) {
        return iLawcaseService.delete(id);
    }
}

