package com.julius.law.project.controller;


import com.julius.law.config.ResponseEntity;
import com.julius.law.project.service.IProjectService;
import io.swagger.models.auth.In;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 项目信息表 前端控制器
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@RestController
@RequestMapping("/project/project")
public class ProjectController {

    private final IProjectService projectService;

    public ProjectController(IProjectService projectService) {
        this.projectService = projectService;
    }

    /**
     * 添加一条项目数据
     *
     * @param data 项目数据以及联系人组成的json串
     * @return
     */
    @PostMapping("insert")
    public ResponseEntity insert(@RequestBody String data) {
        return projectService.insert(data);
    }

    /**
     * 列出所有项目信息
     *
     * @param currentPage 当前页
     * @param pageSize    每页显示条数
     * @return
     */
    @GetMapping("list")
    public ResponseEntity list(@RequestParam("currentPage") Integer currentPage,
                               @RequestParam("pageSize") Integer pageSize) {
        //此处应该获取当前登录用户的信息,根据当前登录用户进行获取
        return projectService.listProjects(currentPage, pageSize);
    }

    /**
     * 根据id删除一条信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("delete")
    public ResponseEntity delete(@RequestParam Long id) {
        return projectService.delete(id);
    }

}

