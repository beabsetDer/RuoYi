package com.ruoyi.kaisheng.service;

import java.util.List;
import com.ruoyi.kaisheng.domain.KsDownbound;

/**
 * 南下表單Service接口
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public interface IKsDownboundService 
{
    /**
     * 查询南下表單
     * 
     * @param id 南下表單主键
     * @return 南下表單
     */
    public KsDownbound selectKsDownboundById(Integer id);

    /**
     * 查询南下表單列表
     * 
     * @param ksDownbound 南下表單
     * @return 南下表單集合
     */
    public List<KsDownbound> selectKsDownboundList(KsDownbound ksDownbound);

    /**
     * 新增南下表單
     * 
     * @param ksDownbound 南下表單
     * @return 结果
     */
    public int insertKsDownbound(KsDownbound ksDownbound);

    /**
     * 修改南下表單
     * 
     * @param ksDownbound 南下表單
     * @return 结果
     */
    public int updateKsDownbound(KsDownbound ksDownbound);

    /**
     * 批量删除南下表單
     * 
     * @param ids 需要删除的南下表單主键集合
     * @return 结果
     */
    public int deleteKsDownboundByIds(String ids);

    /**
     * 删除南下表單信息
     * 
     * @param id 南下表單主键
     * @return 结果
     */
    public int deleteKsDownboundById(Integer id);
}
