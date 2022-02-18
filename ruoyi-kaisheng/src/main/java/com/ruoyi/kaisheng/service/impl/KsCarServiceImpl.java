package com.ruoyi.kaisheng.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kaisheng.mapper.KsCarMapper;
import com.ruoyi.kaisheng.domain.KsCar;
import com.ruoyi.kaisheng.service.IKsCarService;
import com.ruoyi.common.core.text.Convert;

/**
 * 車輛表單Service业务层处理
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Service
public class KsCarServiceImpl implements IKsCarService 
{
    @Autowired
    private KsCarMapper ksCarMapper;

    /**
     * 查询車輛表單
     * 
     * @param id 車輛表單主键
     * @return 車輛表單
     */
    @Override
    public KsCar selectKsCarById(Integer id)
    {
        return ksCarMapper.selectKsCarById(id);
    }

    /**
     * 查询車輛表單列表
     * 
     * @param ksCar 車輛表單
     * @return 車輛表單
     */
    @Override
    public List<KsCar> selectKsCarList(KsCar ksCar)
    {
        return ksCarMapper.selectKsCarList(ksCar);
    }

    /**
     * 新增車輛表單
     * 
     * @param ksCar 車輛表單
     * @return 结果
     */
    @Override
    public int insertKsCar(KsCar ksCar)
    {
        return ksCarMapper.insertKsCar(ksCar);
    }

    /**
     * 修改車輛表單
     * 
     * @param ksCar 車輛表單
     * @return 结果
     */
    @Override
    public int updateKsCar(KsCar ksCar)
    {
        return ksCarMapper.updateKsCar(ksCar);
    }

    /**
     * 批量删除車輛表單
     * 
     * @param ids 需要删除的車輛表單主键
     * @return 结果
     */
    @Override
    public int deleteKsCarByIds(String ids)
    {
        return ksCarMapper.deleteKsCarByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除車輛表單信息
     * 
     * @param id 車輛表單主键
     * @return 结果
     */
    @Override
    public int deleteKsCarById(Integer id)
    {
        return ksCarMapper.deleteKsCarById(id);
    }
}
