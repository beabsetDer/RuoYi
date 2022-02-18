package com.ruoyi.kaisheng.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 車輛表單对象 ks_car
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public class KsCar extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 流水號 */
    private Integer id;

    /** 車牌 */
    @Excel(name = "車牌")
    private String licensePlateNumber;

    /** 車輛狀況 */
    @Excel(name = "車輛狀況")
    private String carIdle;

    /** 購車日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "購車日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date carPurchaseDate;

    /** 貸款狀態 */
    @Excel(name = "貸款狀態")
    private String carLoan;

    /** 保養日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "保養日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date carMaintenanceDate;

    /** 下次保養日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "下次保養日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date nextMaintenanceDate;

    /** 保養狀態 */
    @Excel(name = "保養狀態")
    private String carMaintenance;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setLicensePlateNumber(String licensePlateNumber) 
    {
        this.licensePlateNumber = licensePlateNumber;
    }

    public String getLicensePlateNumber() 
    {
        return licensePlateNumber;
    }
    public void setCarIdle(String carIdle) 
    {
        this.carIdle = carIdle;
    }

    public String getCarIdle() 
    {
        return carIdle;
    }
    public void setCarPurchaseDate(Date carPurchaseDate) 
    {
        this.carPurchaseDate = carPurchaseDate;
    }

    public Date getCarPurchaseDate() 
    {
        return carPurchaseDate;
    }
    public void setCarLoan(String carLoan) 
    {
        this.carLoan = carLoan;
    }

    public String getCarLoan() 
    {
        return carLoan;
    }
    public void setCarMaintenanceDate(Date carMaintenanceDate) 
    {
        this.carMaintenanceDate = carMaintenanceDate;
    }

    public Date getCarMaintenanceDate() 
    {
        return carMaintenanceDate;
    }
    public void setNextMaintenanceDate(Date nextMaintenanceDate) 
    {
        this.nextMaintenanceDate = nextMaintenanceDate;
    }

    public Date getNextMaintenanceDate() 
    {
        return nextMaintenanceDate;
    }
    public void setCarMaintenance(String carMaintenance) 
    {
        this.carMaintenance = carMaintenance;
    }

    public String getCarMaintenance() 
    {
        return carMaintenance;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("licensePlateNumber", getLicensePlateNumber())
            .append("carIdle", getCarIdle())
            .append("carPurchaseDate", getCarPurchaseDate())
            .append("carLoan", getCarLoan())
            .append("carMaintenanceDate", getCarMaintenanceDate())
            .append("nextMaintenanceDate", getNextMaintenanceDate())
            .append("carMaintenance", getCarMaintenance())
            .toString();
    }
}
