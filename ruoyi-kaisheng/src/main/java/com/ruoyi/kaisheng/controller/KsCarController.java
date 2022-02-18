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
import com.ruoyi.kaisheng.domain.KsCar;
import com.ruoyi.kaisheng.service.IKsCarService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 車輛表單Controller
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Controller
@RequestMapping("/ks/car")
public class KsCarController extends BaseController
{
    private String prefix = "ks/car";

    @Autowired
    private IKsCarService ksCarService;

    @RequiresPermissions("ks:car:view")
    @GetMapping()
    public String car()
    {
        return prefix + "/car";
    }

    /**
     * 查询車輛表單列表
     */
    @RequiresPermissions("ks:car:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KsCar ksCar)
    {
        startPage();
        List<KsCar> list = ksCarService.selectKsCarList(ksCar);
        return getDataTable(list);
    }

    /**
     * 导出車輛表單列表
     */
    @RequiresPermissions("ks:car:export")
    @Log(title = "車輛表單", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KsCar ksCar)
    {
        List<KsCar> list = ksCarService.selectKsCarList(ksCar);
        ExcelUtil<KsCar> util = new ExcelUtil<KsCar>(KsCar.class);
        return util.exportExcel(list, "車輛表單数据");
    }

    /**
     * 新增車輛表單
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存車輛表單
     */
    @RequiresPermissions("ks:car:add")
    @Log(title = "車輛表單", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KsCar ksCar)
    {
        return toAjax(ksCarService.insertKsCar(ksCar));
    }

    /**
     * 修改車輛表單
     */
    @RequiresPermissions("ks:car:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        KsCar ksCar = ksCarService.selectKsCarById(id);
        mmap.put("ksCar", ksCar);
        return prefix + "/edit";
    }

    /**
     * 修改保存車輛表單
     */
    @RequiresPermissions("ks:car:edit")
    @Log(title = "車輛表單", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KsCar ksCar)
    {
        return toAjax(ksCarService.updateKsCar(ksCar));
    }

    /**
     * 删除車輛表單
     */
    @RequiresPermissions("ks:car:remove")
    @Log(title = "車輛表單", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ksCarService.deleteKsCarByIds(ids));
    }
}
