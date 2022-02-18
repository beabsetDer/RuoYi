package com.ruoyi.kaisheng.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 運送貨物表單对象 ks_goods
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public class KsGoods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 流水號 */
    private Integer id;

    /** 品項編號 */
    @Excel(name = "品項編號")
    private String goodsId;

    /** 品項名稱 */
    @Excel(name = "品項名稱")
    private String goodsName;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setGoodsId(String goodsId) 
    {
        this.goodsId = goodsId;
    }

    public String getGoodsId() 
    {
        return goodsId;
    }
    public void setGoodsName(String goodsName) 
    {
        this.goodsName = goodsName;
    }

    public String getGoodsName() 
    {
        return goodsName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("goodsId", getGoodsId())
            .append("goodsName", getGoodsName())
            .toString();
    }
}
