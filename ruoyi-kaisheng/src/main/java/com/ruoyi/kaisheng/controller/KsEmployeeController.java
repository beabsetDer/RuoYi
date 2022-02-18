package com.ruoyi.kaisheng.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.kaisheng.domain.KsEmployee;
import com.ruoyi.kaisheng.service.IKsEmployeeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 員工表單Controller
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Controller
@RequestMapping("/ks/employee")
public class KsEmployeeController extends BaseController
{
    private String prefix = "ks/employee";

    @Autowired
    private IKsEmployeeService ksEmployeeService;

    @RequiresPermissions("ks:employee:view")
    @GetMapping()
    public String employee()
    {
        return prefix + "/employee";
    }

    /**
     * 查询員工表單列表
     */
    @RequiresPermissions("ks:employee:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KsEmployee ksEmployee)
    {
        startPage();
        List<KsEmployee> list = ksEmployeeService.selectKsEmployeeList(ksEmployee);
        return getDataTable(list);
    }

    /**
     * 导出員工表單列表
     */
    @RequiresPermissions("ks:employee:export")
    @Log(title = "員工表單", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KsEmployee ksEmployee)
    {
        List<KsEmployee> list = ksEmployeeService.selectKsEmployeeList(ksEmployee);
        ExcelUtil<KsEmployee> util = new ExcelUtil<KsEmployee>(KsEmployee.class);
        return util.exportExcel(list, "員工表單数据");
    }

    /**
     * 新增員工表單
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存員工表單
     */
    @RequiresPermissions("ks:employee:add")
    @Log(title = "員工表單", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KsEmployee ksEmployee)
    {
        return toAjax(ksEmployeeService.insertKsEmployee(ksEmployee));
    }

    /**
     * 修改員工表單
     */
    @RequiresPermissions("ks:employee:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        KsEmployee ksEmployee = ksEmployeeService.selectKsEmployeeById(id);
        mmap.put("ksEmployee", ksEmployee);
        return prefix + "/edit";
    }

    /**
     * 修改保存員工表單
     */
    @RequiresPermissions("ks:employee:edit")
    @Log(title = "員工表單", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KsEmployee ksEmployee)
    {
        return toAjax(ksEmployeeService.updateKsEmployee(ksEmployee));
    }

    /**
     * 删除員工表單
     */
    @RequiresPermissions("ks:employee:remove")
    @Log(title = "員工表單", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ksEmployeeService.deleteKsEmployeeByIds(ids));
    }
}
