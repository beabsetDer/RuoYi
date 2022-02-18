package com.ruoyi.kaisheng.service;

import java.util.List;
import com.ruoyi.kaisheng.domain.KsGonorth;

/**
 * 北上表單Service接口
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public interface IKsGonorthService 
{
    /**
     * 查询北上表單
     * 
     * @param id 北上表單主键
     * @return 北上表單
     */
    public KsGonorth selectKsGonorthById(Integer id);

    /**
     * 查询北上表單列表
     * 
     * @param ksGonorth 北上表單
     * @return 北上表單集合
     */
    public List<KsGonorth> selectKsGonorthList(KsGonorth ksGonorth);

    /**
     * 新增北上表單
     * 
     * @param ksGonorth 北上表單
     * @return 结果
     */
    public int insertKsGonorth(KsGonorth ksGonorth);

    /**
     * 修改北上表單
     * 
     * @param ksGonorth 北上表單
     * @return 结果
     */
    public int updateKsGonorth(KsGonorth ksGonorth);

    /**
     * 批量删除北上表單
     * 
     * @param ids 需要删除的北上表單主键集合
     * @return 结果
     */
    public int deleteKsGonorthByIds(String ids);

    /**
     * 删除北上表單信息
     * 
     * @param id 北上表單主键
     * @return 结果
     */
    public int deleteKsGonorthById(Integer id);
}
