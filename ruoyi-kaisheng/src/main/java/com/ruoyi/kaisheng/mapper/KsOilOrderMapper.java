package com.ruoyi.kaisheng.mapper;

import java.util.List;
import com.ruoyi.kaisheng.domain.KsOilOrder;

/**
 * 加油單表單Mapper接口
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public interface KsOilOrderMapper 
{
    /**
     * 查询加油單表單
     * 
     * @param id 加油單表單主键
     * @return 加油單表單
     */
    public KsOilOrder selectKsOilOrderById(Integer id);

    /**
     * 查询加油單表單列表
     * 
     * @param ksOilOrder 加油單表單
     * @return 加油單表單集合
     */
    public List<KsOilOrder> selectKsOilOrderList(KsOilOrder ksOilOrder);

    /**
     * 新增加油單表單
     * 
     * @param ksOilOrder 加油單表單
     * @return 结果
     */
    public int insertKsOilOrder(KsOilOrder ksOilOrder);

    /**
     * 修改加油單表單
     * 
     * @param ksOilOrder 加油單表單
     * @return 结果
     */
    public int updateKsOilOrder(KsOilOrder ksOilOrder);

    /**
     * 删除加油單表單
     * 
     * @param id 加油單表單主键
     * @return 结果
     */
    public int deleteKsOilOrderById(Integer id);

    /**
     * 批量删除加油單表單
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKsOilOrderByIds(String[] ids);
}
