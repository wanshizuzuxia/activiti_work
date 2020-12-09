package com.kalvin.kvf.modules.wode.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import com.kalvin.kvf.modules.wode.entity.Stuts;
import com.kalvin.kvf.modules.wode.mapper.StutsMapper;

import java.util.List;

/**
 * <p>
 * 学生表 服务实现类
 * </p>
 * @since 2020-10-26 23:50:04
 */
@Service
public class StutsServiceImpl extends ServiceImpl<StutsMapper, Stuts> implements StutsService {

    @Override
    public Page<Stuts> listStutsPage(Stuts stuts) {
        Page<Stuts> page = new Page<>(stuts.getCurrent(), stuts.getSize());
        List<Stuts> stutss = baseMapper.selectStutsList(stuts, page);
        return page.setRecords(stutss);
    }

}
