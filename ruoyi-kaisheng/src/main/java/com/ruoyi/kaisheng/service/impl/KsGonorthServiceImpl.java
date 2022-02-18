package com.ruoyi.kaisheng.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kaisheng.mapper.KsGonorthMapper;
import com.ruoyi.kaisheng.domain.KsGonorth;
import com.ruoyi.kaisheng.service.IKsGonorthService;
import com.ruoyi.common.core.text.Convert;

/**
 * 北上表單Service业务层处理
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Service
public class KsGonorthServiceImpl implements IKsGonorthService 
{
    @Autowired
    private KsGonorthMapper ksGonorthMapper;

    /**
     * 查询北上表單
     * 
     * @param id 北上表單主键
     * @return 北上表單
     */
    @Override
    public KsGonorth selectKsGonorthById(Integer id)
    {
        return ksGonorthMapper.selectKsGonorthById(id);
    }

    /**
     * 查询北上表單列表
     * 
     * @param ksGonorth 北上表單
     * @return 北上表單
     */
    @Override
    public List<KsGonorth> selectKsGonorthList(KsGonorth ksGonorth)
    {
        return ksGonorthMapper.selectKsGonorthList(ksGonorth);
    }

    /**
     * 新增北上表單
     * 
     * @param ksGonorth 北上表單
     * @return 结果
     */
    @Override
    public int insertKsGonorth(KsGonorth ksGonorth)
    {
        return ksGonorthMapper.insertKsGonorth(ksGonorth);
    }

    /**
     * 修改北上表單
     * 
     * @param ksGonorth 北上表單
     * @return 结果
     */
    @Override
    public int updateKsGonorth(KsGonorth ksGonorth)
    {
        return ksGonorthMapper.updateKsGonorth(ksGonorth);
    }

    /**
     * 批量删除北上表單
     * 
     * @param ids 需要删除的北上表單主键
     * @return 结果
     */
    @Override
    public int deleteKsGonorthByIds(String ids)
    {
        return ksGonorthMapper.deleteKsGonorthByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除北上表單信息
     * 
     * @param id 北上表單主键
     * @return 结果
     */
    @Override
    public int deleteKsGonorthById(Integer id)
    {
        return ksGonorthMapper.deleteKsGonorthById(id);
    }
}
