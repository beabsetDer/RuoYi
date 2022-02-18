package com.ruoyi.kaisheng.mapper;

import java.util.List;
import com.ruoyi.kaisheng.domain.KsEmployee;

/**
 * 員工表單Mapper接口
 * 
 * @author Sheng
 * @date 2022-02-19
 */
public interface KsEmployeeMapper 
{
    /**
     * 查询員工表單
     * 
     * @param id 員工表單主键
     * @return 員工表單
     */
    public KsEmployee selectKsEmployeeById(Integer id);

    /**
     * 查询員工表單列表
     * 
     * @param ksEmployee 員工表單
     * @return 員工表單集合
     */
    public List<KsEmployee> selectKsEmployeeList(KsEmployee ksEmployee);

    /**
     * 新增員工表單
     * 
     * @param ksEmployee 員工表單
     * @return 结果
     */
    public int insertKsEmployee(KsEmployee ksEmployee);

    /**
     * 修改員工表單
     * 
     * @param ksEmployee 員工表單
     * @return 结果
     */
    public int updateKsEmployee(KsEmployee ksEmployee);

    /**
     * 删除員工表單
     * 
     * @param id 員工表單主键
     * @return 结果
     */
    public int deleteKsEmployeeById(Integer id);

    /**
     * 批量删除員工表單
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKsEmployeeByIds(String[] ids);
}
