package com.julius.law.lawcase.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 当事人信息表
 * </p>
 *
 * @author julius
 * @since 2021-01-06
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("LawParties")
@ApiModel(value="Lawparties对象", description="当事人信息表")
public class Lawparties implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "联系方式")
    private String mobile;

    @ApiModelProperty(value = "其他信息")
    private String other;

    @ApiModelProperty(value = "案件信息id")
    @TableField("lawCaseId")
    private Integer lawcaseid;


}
