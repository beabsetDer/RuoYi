package com.ruoyi.kaisheng.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kaisheng.mapper.KsDownboundMapper;
import com.ruoyi.kaisheng.domain.KsDownbound;
import com.ruoyi.kaisheng.service.IKsDownboundService;
import com.ruoyi.common.core.text.Convert;

/**
 * 南下表單Service业务层处理
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Service
public class KsDownboundServiceImpl implements IKsDownboundService 
{
    @Autowired
    private KsDownboundMapper ksDownboundMapper;

    /**
     * 查询南下表單
     * 
     * @param id 南下表單主键
     * @return 南下表單
     */
    @Override
    public KsDownbound selectKsDownboundById(Integer id)
    {
        return ksDownboundMapper.selectKsDownboundById(id);
    }

    /**
     * 查询南下表單列表
     * 
     * @param ksDownbound 南下表單
     * @return 南下表單
     */
    @Override
    public List<KsDownbound> selectKsDownboundList(KsDownbound ksDownbound)
    {
        return ksDownboundMapper.selectKsDownboundList(ksDownbound);
    }

    /**
     * 新增南下表單
     * 
     * @param ksDownbound 南下表單
     * @return 结果
     */
    @Override
    public int insertKsDownbound(KsDownbound ksDownbound)
    {
        return ksDownboundMapper.insertKsDownbound(ksDownbound);
    }

    /**
     * 修改南下表單
     * 
     * @param ksDownbound 南下表單
     * @return 结果
     */
    @Override
    public int updateKsDownbound(KsDownbound ksDownbound)
    {
        return ksDownboundMapper.updateKsDownbound(ksDownbound);
    }

    /**
     * 批量删除南下表單
     * 
     * @param ids 需要删除的南下表單主键
     * @return 结果
     */
    @Override
    public int deleteKsDownboundByIds(String ids)
    {
        return ksDownboundMapper.deleteKsDownboundByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除南下表單信息
     * 
     * @param id 南下表單主键
     * @return 结果
     */
    @Override
    public int deleteKsDownboundById(Integer id)
    {
        return ksDownboundMapper.deleteKsDownboundById(id);
    }
}
