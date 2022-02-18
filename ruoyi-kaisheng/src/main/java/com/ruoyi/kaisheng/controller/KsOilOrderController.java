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
import com.ruoyi.kaisheng.domain.KsOilOrder;
import com.ruoyi.kaisheng.service.IKsOilOrderService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 加油單表單Controller
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Controller
@RequestMapping("/ks/oil")
public class KsOilOrderController extends BaseController
{
    private String prefix = "ks/oil";

    @Autowired
    private IKsOilOrderService ksOilOrderService;

    @RequiresPermissions("ks:oil:view")
    @GetMapping()
    public String oil()
    {
        return prefix + "/oil";
    }

    /**
     * 查询加油單表單列表
     */
    @RequiresPermissions("ks:oil:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KsOilOrder ksOilOrder)
    {
        startPage();
        List<KsOilOrder> list = ksOilOrderService.selectKsOilOrderList(ksOilOrder);
        return getDataTable(list);
    }

    /**
     * 导出加油單表單列表
     */
    @RequiresPermissions("ks:oil:export")
    @Log(title = "加油單表單", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KsOilOrder ksOilOrder)
    {
        List<KsOilOrder> list = ksOilOrderService.selectKsOilOrderList(ksOilOrder);
        ExcelUtil<KsOilOrder> util = new ExcelUtil<KsOilOrder>(KsOilOrder.class);
        return util.exportExcel(list, "加油單表單数据");
    }

    /**
     * 新增加油單表單
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存加油單表單
     */
    @RequiresPermissions("ks:oil:add")
    @Log(title = "加油單表單", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KsOilOrder ksOilOrder)
    {
        return toAjax(ksOilOrderService.insertKsOilOrder(ksOilOrder));
    }

    /**
     * 修改加油單表單
     */
    @RequiresPermissions("ks:oil:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        KsOilOrder ksOilOrder = ksOilOrderService.selectKsOilOrderById(id);
        mmap.put("ksOilOrder", ksOilOrder);
        return prefix + "/edit";
    }

    /**
     * 修改保存加油單表單
     */
    @RequiresPermissions("ks:oil:edit")
    @Log(title = "加油單表單", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KsOilOrder ksOilOrder)
    {
        return toAjax(ksOilOrderService.updateKsOilOrder(ksOilOrder));
    }

    /**
     * 删除加油單表單
     */
    @RequiresPermissions("ks:oil:remove")
    @Log(title = "加油單表單", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ksOilOrderService.deleteKsOilOrderByIds(ids));
    }
}
