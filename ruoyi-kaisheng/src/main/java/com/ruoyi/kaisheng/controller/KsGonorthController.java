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
import com.ruoyi.kaisheng.domain.KsGonorth;
import com.ruoyi.kaisheng.service.IKsGonorthService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 北上表單Controller
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Controller
@RequestMapping("/ks/gonorth")
public class KsGonorthController extends BaseController
{
    private String prefix = "ks/gonorth";

    @Autowired
    private IKsGonorthService ksGonorthService;

    @RequiresPermissions("ks:gonorth:view")
    @GetMapping()
    public String gonorth()
    {
        return prefix + "/gonorth";
    }

    /**
     * 查询北上表單列表
     */
    @RequiresPermissions("ks:gonorth:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KsGonorth ksGonorth)
    {
        startPage();
        List<KsGonorth> list = ksGonorthService.selectKsGonorthList(ksGonorth);
        return getDataTable(list);
    }

    /**
     * 导出北上表單列表
     */
    @RequiresPermissions("ks:gonorth:export")
    @Log(title = "北上表單", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KsGonorth ksGonorth)
    {
        List<KsGonorth> list = ksGonorthService.selectKsGonorthList(ksGonorth);
        ExcelUtil<KsGonorth> util = new ExcelUtil<KsGonorth>(KsGonorth.class);
        return util.exportExcel(list, "北上表單数据");
    }

    /**
     * 新增北上表單
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存北上表單
     */
    @RequiresPermissions("ks:gonorth:add")
    @Log(title = "北上表單", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KsGonorth ksGonorth)
    {
        return toAjax(ksGonorthService.insertKsGonorth(ksGonorth));
    }

    /**
     * 修改北上表單
     */
    @RequiresPermissions("ks:gonorth:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        KsGonorth ksGonorth = ksGonorthService.selectKsGonorthById(id);
        mmap.put("ksGonorth", ksGonorth);
        return prefix + "/edit";
    }

    /**
     * 修改保存北上表單
     */
    @RequiresPermissions("ks:gonorth:edit")
    @Log(title = "北上表單", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KsGonorth ksGonorth)
    {
        return toAjax(ksGonorthService.updateKsGonorth(ksGonorth));
    }

    /**
     * 删除北上表單
     */
    @RequiresPermissions("ks:gonorth:remove")
    @Log(title = "北上表單", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ksGonorthService.deleteKsGonorthByIds(ids));
    }
}
