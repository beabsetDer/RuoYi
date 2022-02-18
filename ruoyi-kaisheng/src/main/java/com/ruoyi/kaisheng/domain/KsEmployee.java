package com.ruoyi.kaisheng.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 員工表單对象 ks_employee
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public class KsEmployee extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 流水號 */
    private Integer id;

    /** 員工編號 */
    @Excel(name = "員工編號")
    private String employeeId;

    /** 員工姓名 */
    @Excel(name = "員工姓名")
    private String name;

    /** 綽號 */
    @Excel(name = "綽號")
    private String aka;

    /** 手機 */
    @Excel(name = "手機")
    private String phoneNumber;

    /** 身分證 */
    @Excel(name = "身分證")
    private String idCard;

    /** 姓別 */
    @Excel(name = "姓別")
    private String sex;

    /** 家電 */
    @Excel(name = "家電")
    private String homeTelephoneNumber;

    /** 住址 */
    @Excel(name = "住址")
    private String address;

    /** 隸屬公司 */
    @Excel(name = "隸屬公司")
    private String company;

    /** 職稱 */
    @Excel(name = "職稱")
    private String staffPositions;

    /** 入職日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "入職日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date entryDate;

    /** 離職日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "離職日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date resignationDate;

    /** 離職原因 */
    @Excel(name = "離職原因")
    private String reasonForLeaving;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setEmployeeId(String employeeId) 
    {
        this.employeeId = employeeId;
    }

    public String getEmployeeId() 
    {
        return employeeId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setAka(String aka) 
    {
        this.aka = aka;
    }

    public String getAka() 
    {
        return aka;
    }
    public void setPhoneNumber(String phoneNumber) 
    {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber() 
    {
        return phoneNumber;
    }
    public void setIdCard(String idCard) 
    {
        this.idCard = idCard;
    }

    public String getIdCard() 
    {
        return idCard;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setHomeTelephoneNumber(String homeTelephoneNumber) 
    {
        this.homeTelephoneNumber = homeTelephoneNumber;
    }

    public String getHomeTelephoneNumber() 
    {
        return homeTelephoneNumber;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setCompany(String company) 
    {
        this.company = company;
    }

    public String getCompany() 
    {
        return company;
    }
    public void setStaffPositions(String staffPositions) 
    {
        this.staffPositions = staffPositions;
    }

    public String getStaffPositions() 
    {
        return staffPositions;
    }
    public void setEntryDate(Date entryDate) 
    {
        this.entryDate = entryDate;
    }

    public Date getEntryDate() 
    {
        return entryDate;
    }
    public void setResignationDate(Date resignationDate) 
    {
        this.resignationDate = resignationDate;
    }

    public Date getResignationDate() 
    {
        return resignationDate;
    }
    public void setReasonForLeaving(String reasonForLeaving) 
    {
        this.reasonForLeaving = reasonForLeaving;
    }

    public String getReasonForLeaving() 
    {
        return reasonForLeaving;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("employeeId", getEmployeeId())
            .append("name", getName())
            .append("aka", getAka())
            .append("phoneNumber", getPhoneNumber())
            .append("idCard", getIdCard())
            .append("sex", getSex())
            .append("homeTelephoneNumber", getHomeTelephoneNumber())
            .append("address", getAddress())
            .append("company", getCompany())
            .append("staffPositions", getStaffPositions())
            .append("entryDate", getEntryDate())
            .append("resignationDate", getResignationDate())
            .append("reasonForLeaving", getReasonForLeaving())
            .toString();
    }
}
