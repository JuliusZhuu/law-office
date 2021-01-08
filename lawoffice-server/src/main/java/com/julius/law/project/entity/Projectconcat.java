package com.julius.law.project.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 项目信息联系人表
 * </p>
 *
 * @author julius
 * @since 2021-01-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("projectConcat")
@ApiModel(value="Projectconcat对象", description="项目信息联系人表")
public class Projectconcat implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "联系人姓名")
    @TableField("concatName")
    private String concatName;

    @ApiModelProperty(value = "所在机构")
    private String organization;

    @ApiModelProperty(value = "职位")
    private String position;

    @ApiModelProperty(value = "手机")
    private String mobile;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "地址")
    private String address;

    @ApiModelProperty(value = "项目id")
    @TableField(value = "projectId")
    private Integer projectId;
}
