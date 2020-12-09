package com.kalvin.kvf.modules.wode.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.kalvin.kvf.modules.wode.entity.Stuts;

import java.util.List;

/**
 * <p>
 * 学生表 Mapper 接口
 * </p>
 * @since 2020-10-26 23:50:04
 */
public interface StutsMapper extends BaseMapper<Stuts> {

    /**
     * 查询列表(分页)
     * @param stuts 查询参数
     * @param page 分页参数
     * @return list
     */
    List<Stuts> selectStutsList(Stuts stuts, IPage page);

}
