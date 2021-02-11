package com.julius.law.client.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableField;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * <p>
 * 客户信息表
 * </p>
 *
 * @author julius
 * @since 2021-01-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "Client对象", description = "客户信息表")
public class Client implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "客户编号")
    @TableField("clientNumber")
    private String clientNumber;

    @ApiModelProperty(value = "客户标识")
    private String identification;

    @ApiModelProperty(value = "合作状态")
    @TableField("teamStatus")
    private String teamStatus;

    @ApiModelProperty(value = "合同开始时间")
    @TableField("startDate")
    //数据库查询出来的格式化方式
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    //请求处理的格式化方式
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;

    @ApiModelProperty(value = "合同结束时间")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @TableField("endDate")
    private LocalDate endDate;

    @ApiModelProperty(value = "跟进人")
    private String followup;

    @ApiModelProperty(value = "客户来源")
    private String origin;

    @ApiModelProperty(value = "单位名称")
    @TableField("unitName")
    private String unitName;

    @ApiModelProperty(value = "客户重要性")
    private String importance;

    @ApiModelProperty(value = "单位地址")
    private String address;

    @ApiModelProperty(value = "法定代表人")
    private String representative;

    @ApiModelProperty(value = "联系电话")
    private String mobile;

    @ApiModelProperty(value = "统一社会信用代码")
    @TableField("creditCode")
    private String creditCode;

    @ApiModelProperty(value = "备注")
    private String backup;

    @ApiModelProperty(value = "删除状态")
    @TableField("deleteStatus")
    private String deleteStatus;

}
