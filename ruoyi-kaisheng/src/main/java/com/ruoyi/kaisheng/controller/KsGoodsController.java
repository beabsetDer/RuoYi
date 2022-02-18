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
import com.ruoyi.kaisheng.domain.KsGoods;
import com.ruoyi.kaisheng.service.IKsGoodsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 運送貨物表單Controller
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Controller
@RequestMapping("/ks/goods")
public class KsGoodsController extends BaseController
{
    private String prefix = "ks/goods";

    @Autowired
    private IKsGoodsService ksGoodsService;

    @RequiresPermissions("ks:goods:view")
    @GetMapping()
    public String goods()
    {
        return prefix + "/goods";
    }

    /**
     * 查询運送貨物表單列表
     */
    @RequiresPermissions("ks:goods:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KsGoods ksGoods)
    {
        startPage();
        List<KsGoods> list = ksGoodsService.selectKsGoodsList(ksGoods);
        return getDataTable(list);
    }

    /**
     * 导出運送貨物表單列表
     */
    @RequiresPermissions("ks:goods:export")
    @Log(title = "運送貨物表單", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KsGoods ksGoods)
    {
        List<KsGoods> list = ksGoodsService.selectKsGoodsList(ksGoods);
        ExcelUtil<KsGoods> util = new ExcelUtil<KsGoods>(KsGoods.class);
        return util.exportExcel(list, "運送貨物表單数据");
    }

    /**
     * 新增運送貨物表單
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存運送貨物表單
     */
    @RequiresPermissions("ks:goods:add")
    @Log(title = "運送貨物表單", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KsGoods ksGoods)
    {
        return toAjax(ksGoodsService.insertKsGoods(ksGoods));
    }

    /**
     * 修改運送貨物表單
     */
    @RequiresPermissions("ks:goods:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        KsGoods ksGoods = ksGoodsService.selectKsGoodsById(id);
        mmap.put("ksGoods", ksGoods);
        return prefix + "/edit";
    }

    /**
     * 修改保存運送貨物表單
     */
    @RequiresPermissions("ks:goods:edit")
    @Log(title = "運送貨物表單", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KsGoods ksGoods)
    {
        return toAjax(ksGoodsService.updateKsGoods(ksGoods));
    }

    /**
     * 删除運送貨物表單
     */
    @RequiresPermissions("ks:goods:remove")
    @Log(title = "運送貨物表單", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ksGoodsService.deleteKsGoodsByIds(ids));
    }
}
