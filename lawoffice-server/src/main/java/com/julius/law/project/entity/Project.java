package com.julius.law.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableField;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 项目信息表
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "Project对象", description = "项目信息表")
public class Project implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "项目名称")
    private String name;

    @ApiModelProperty(value = "项目类型")
    private String type;

    @ApiModelProperty(value = "项目登记")
    private String level;

    @ApiModelProperty(value = "委托方")
    private String entrust;

    @ApiModelProperty(value = "负责人")
    private String principal;

    @ApiModelProperty(value = "委托事项以及权限")
    //框架默认会按照entrust_item作为列明操作,此处直接指定数据表中列名和属性名一致
    @TableField(value = "entrustItem")
    private String entrustItem;

    @ApiModelProperty(value = "开始时间")
    @TableField(value = "startDate")
    private LocalDateTime startDate;
    @TableField(value = "endDate")
    @ApiModelProperty(value = "结束时间")
    private LocalDateTime endDate;

    @ApiModelProperty(value = "经费")
    private BigDecimal expenditure;

    @ApiModelProperty(value = "经费说明")
    @TableField(value = "expendExplain")
    private String expendExplain;

    @ApiModelProperty(value = "备注信息")
    private String backup;

}
