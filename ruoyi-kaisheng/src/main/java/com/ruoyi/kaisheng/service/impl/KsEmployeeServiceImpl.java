package com.ruoyi.kaisheng.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kaisheng.mapper.KsEmployeeMapper;
import com.ruoyi.kaisheng.domain.KsEmployee;
import com.ruoyi.kaisheng.service.IKsEmployeeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 員工表單Service业务层处理
 * 
 * @author Sheng
 * @date 2022-02-19
 */
@Service
public class KsEmployeeServiceImpl implements IKsEmployeeService 
{
    @Autowired
    private KsEmployeeMapper ksEmployeeMapper;

    /**
     * 查询員工表單
     * 
     * @param id 員工表單主键
     * @return 員工表單
     */
    @Override
    public KsEmployee selectKsEmployeeById(Integer id)
    {
        return ksEmployeeMapper.selectKsEmployeeById(id);
    }

    /**
     * 查询員工表單列表
     * 
     * @param ksEmployee 員工表單
     * @return 員工表單
     */
    @Override
    public List<KsEmployee> selectKsEmployeeList(KsEmployee ksEmployee)
    {
        return ksEmployeeMapper.selectKsEmployeeList(ksEmployee);
    }

    /**
     * 新增員工表單
     * 
     * @param ksEmployee 員工表單
     * @return 结果
     */
    @Override
    public int insertKsEmployee(KsEmployee ksEmployee)
    {
        return ksEmployeeMapper.insertKsEmployee(ksEmployee);
    }

    /**
     * 修改員工表單
     * 
     * @param ksEmployee 員工表單
     * @return 结果
     */
    @Override
    public int updateKsEmployee(KsEmployee ksEmployee)
    {
        return ksEmployeeMapper.updateKsEmployee(ksEmployee);
    }

    /**
     * 批量删除員工表單
     * 
     * @param ids 需要删除的員工表單主键
     * @return 结果
     */
    @Override
    public int deleteKsEmployeeByIds(String ids)
    {
        return ksEmployeeMapper.deleteKsEmployeeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除員工表單信息
     * 
     * @param id 員工表單主键
     * @return 结果
     */
    @Override
    public int deleteKsEmployeeById(Integer id)
    {
        return ksEmployeeMapper.deleteKsEmployeeById(id);
    }
}
