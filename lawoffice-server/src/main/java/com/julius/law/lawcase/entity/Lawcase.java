package com.julius.law.lawcase.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 案件信息表
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("lawCase")
@ApiModel(value = "Lawcase对象", description = "案件信息表")
public class Lawcase implements Serializable {

    private static final long serialVersionUID = 1L;
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "案件名称")
    private String name;
    @ApiModelProperty(value = "案件添加人")
    private String username;

    @ApiModelProperty(value = "案件负责人")
    private String principal;

    @ApiModelProperty(value = "案件类型")
    private String type;

    @ApiModelProperty(value = "案件等级")
    private String level;

    @ApiModelProperty(value = "案由")
    private String reason;

    @ApiModelProperty(value = "审理程序")
    private String program;

    @ApiModelProperty(value = "审理机构")
    private String organization;

    @ApiModelProperty(value = "审理机构案号")
    private String organizationNumber;

    @ApiModelProperty(value = "备注")
    private String backup;


}
