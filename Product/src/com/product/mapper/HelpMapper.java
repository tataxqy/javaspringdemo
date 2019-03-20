package com.product.mapper;

import com.product.po.Help;
import com.product.po.HelpExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HelpMapper {
    int countByExample(HelpExample example);

    int deleteByExample(HelpExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Help record);

    int insertSelective(Help record);

    List<Help> selectByExampleWithBLOBs(HelpExample example);

    List<Help> selectByExample(HelpExample example);

    Help selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Help record, @Param("example") HelpExample example);

    int updateByExampleWithBLOBs(@Param("record") Help record, @Param("example") HelpExample example);

    int updateByExample(@Param("record") Help record, @Param("example") HelpExample example);

    int updateByPrimaryKeySelective(Help record);

    int updateByPrimaryKeyWithBLOBs(Help record);

    int updateByPrimaryKey(Help record);
}