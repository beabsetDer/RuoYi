package com.ruoyi.kaisheng.service;

import java.util.List;
import com.ruoyi.kaisheng.domain.KsGoods;

/**
 * 運送貨物表單Service接口
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public interface IKsGoodsService 
{
    /**
     * 查询運送貨物表單
     * 
     * @param id 運送貨物表單主键
     * @return 運送貨物表單
     */
    public KsGoods selectKsGoodsById(Integer id);

    /**
     * 查询運送貨物表單列表
     * 
     * @param ksGoods 運送貨物表單
     * @return 運送貨物表單集合
     */
    public List<KsGoods> selectKsGoodsList(KsGoods ksGoods);

    /**
     * 新增運送貨物表單
     * 
     * @param ksGoods 運送貨物表單
     * @return 结果
     */
    public int insertKsGoods(KsGoods ksGoods);

    /**
     * 修改運送貨物表單
     * 
     * @param ksGoods 運送貨物表單
     * @return 结果
     */
    public int updateKsGoods(KsGoods ksGoods);

    /**
     * 批量删除運送貨物表單
     * 
     * @param ids 需要删除的運送貨物表單主键集合
     * @return 结果
     */
    public int deleteKsGoodsByIds(String ids);

    /**
     * 删除運送貨物表單信息
     * 
     * @param id 運送貨物表單主键
     * @return 结果
     */
    public int deleteKsGoodsById(Integer id);
}
