package com.kalvin.kvf.modules.wode.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kalvin.kvf.modules.wode.entity.Stuts;

/**
 * <p>
 * 学生表 服务类
 * </p>
 * @since 2020-10-26 23:50:04
 */
public interface StutsService extends IService<Stuts> {

    /**
     * 获取列表。分页
     * @param stuts 查询参数
     * @return page
     */
    Page<Stuts> listStutsPage(Stuts stuts);

}
