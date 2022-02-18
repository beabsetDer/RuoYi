package com.ruoyi.kaisheng.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 加油單表單对象 ks_oil_order
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public class KsOilOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 流水號 */
    private Integer id;

    /** 油單編號 */
    @Excel(name = "油單編號")
    private String oilOrderId;

    /** 加油日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "加油日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date oidDate;

    /** 機司名稱 */
    @Excel(name = "機司名稱")
    private String oilDriver;

    /** 油加車牌 */
    @Excel(name = "油加車牌")
    private String oilLicensePlateNumber;

    /** 油的種類 */
    @Excel(name = "油的種類")
    private String oilType;

    /** 油的價格 */
    @Excel(name = "油的價格")
    private BigDecimal oilPrice;

    /** 加油公升 */
    @Excel(name = "加油公升")
    private BigDecimal oilLiters;

    /** 油單總價格 */
    @Excel(name = "油單總價格")
    private BigDecimal oilTotal;

    /** 加油站名稱 */
    @Excel(name = "加油站名稱")
    private String gasStation;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setOilOrderId(String oilOrderId) 
    {
        this.oilOrderId = oilOrderId;
    }

    public String getOilOrderId() 
    {
        return oilOrderId;
    }
    public void setOidDate(Date oidDate) 
    {
        this.oidDate = oidDate;
    }

    public Date getOidDate() 
    {
        return oidDate;
    }
    public void setOilDriver(String oilDriver) 
    {
        this.oilDriver = oilDriver;
    }

    public String getOilDriver() 
    {
        return oilDriver;
    }
    public void setOilLicensePlateNumber(String oilLicensePlateNumber) 
    {
        this.oilLicensePlateNumber = oilLicensePlateNumber;
    }

    public String getOilLicensePlateNumber() 
    {
        return oilLicensePlateNumber;
    }
    public void setOilType(String oilType) 
    {
        this.oilType = oilType;
    }

    public String getOilType() 
    {
        return oilType;
    }
    public void setOilPrice(BigDecimal oilPrice) 
    {
        this.oilPrice = oilPrice;
    }

    public BigDecimal getOilPrice() 
    {
        return oilPrice;
    }
    public void setOilLiters(BigDecimal oilLiters) 
    {
        this.oilLiters = oilLiters;
    }

    public BigDecimal getOilLiters() 
    {
        return oilLiters;
    }
    public void setOilTotal(BigDecimal oilTotal) 
    {
        this.oilTotal = oilTotal;
    }

    public BigDecimal getOilTotal() 
    {
        return oilTotal;
    }
    public void setGasStation(String gasStation) 
    {
        this.gasStation = gasStation;
    }

    public String getGasStation() 
    {
        return gasStation;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("oilOrderId", getOilOrderId())
            .append("oidDate", getOidDate())
            .append("oilDriver", getOilDriver())
            .append("oilLicensePlateNumber", getOilLicensePlateNumber())
            .append("oilType", getOilType())
            .append("oilPrice", getOilPrice())
            .append("oilLiters", getOilLiters())
            .append("oilTotal", getOilTotal())
            .append("gasStation", getGasStation())
            .toString();
    }
}
