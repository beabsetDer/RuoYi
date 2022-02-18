package com.ruoyi.kaisheng.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kaisheng.mapper.KsGoodsMapper;
import com.ruoyi.kaisheng.domain.KsGoods;
import com.ruoyi.kaisheng.service.IKsGoodsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 運送貨物表單Service业务层处理
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Service
public class KsGoodsServiceImpl implements IKsGoodsService 
{
    @Autowired
    private KsGoodsMapper ksGoodsMapper;

    /**
     * 查询運送貨物表單
     * 
     * @param id 運送貨物表單主键
     * @return 運送貨物表單
     */
    @Override
    public KsGoods selectKsGoodsById(Integer id)
    {
        return ksGoodsMapper.selectKsGoodsById(id);
    }

    /**
     * 查询運送貨物表單列表
     * 
     * @param ksGoods 運送貨物表單
     * @return 運送貨物表單
     */
    @Override
    public List<KsGoods> selectKsGoodsList(KsGoods ksGoods)
    {
        return ksGoodsMapper.selectKsGoodsList(ksGoods);
    }

    /**
     * 新增運送貨物表單
     * 
     * @param ksGoods 運送貨物表單
     * @return 结果
     */
    @Override
    public int insertKsGoods(KsGoods ksGoods)
    {
        return ksGoodsMapper.insertKsGoods(ksGoods);
    }

    /**
     * 修改運送貨物表單
     * 
     * @param ksGoods 運送貨物表單
     * @return 结果
     */
    @Override
    public int updateKsGoods(KsGoods ksGoods)
    {
        return ksGoodsMapper.updateKsGoods(ksGoods);
    }

    /**
     * 批量删除運送貨物表單
     * 
     * @param ids 需要删除的運送貨物表單主键
     * @return 结果
     */
    @Override
    public int deleteKsGoodsByIds(String ids)
    {
        return ksGoodsMapper.deleteKsGoodsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除運送貨物表單信息
     * 
     * @param id 運送貨物表單主键
     * @return 结果
     */
    @Override
    public int deleteKsGoodsById(Integer id)
    {
        return ksGoodsMapper.deleteKsGoodsById(id);
    }
}
