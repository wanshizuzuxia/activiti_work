package com.kalvin.kvf.modules.wode.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.kalvin.kvf.common.controller.BaseController;
import com.kalvin.kvf.common.dto.R;
import com.kalvin.kvf.modules.wode.entity.Stuts;
import com.kalvin.kvf.modules.wode.service.StutsService;

import java.util.List;


/**
 * <p>
 * 学生表 前端控制器
 * </p>
 * @since 2020-10-26 23:50:04
 */
@RestController
@RequestMapping("wode/stuts")
public class StutsController extends BaseController {

    @Autowired
    private StutsService stutsService;

    @RequiresPermissions("wode:stuts:index")
    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("wode/stuts");
    }

    @GetMapping(value = "edit")
    public ModelAndView edit(Long id) {
        ModelAndView mv = new ModelAndView("wode/stuts_edit");
        Stuts stuts;
        if (id == null) {
            stuts = new Stuts();
        } else {
            stuts = stutsService.getById(id);
        }
        mv.addObject("editInfo", stuts);
        return mv;
    }

    @GetMapping(value = "list/data")
    public R listData(Stuts stuts) {
        Page<Stuts> page = stutsService.listStutsPage(stuts);
        return R.ok(page);
    }

    @RequiresPermissions("wode:stuts:add")
    @PostMapping(value = "add")
    public R add(Stuts stuts) {
        stutsService.save(stuts);
        return R.ok();
    }

    @RequiresPermissions("wode:stuts:del")
    @PostMapping(value = "batchdel")
    public R batchdel(@RequestParam("ids") List<Long> ids) {
        stutsService.removeByIds(ids);
        return R.ok();
    }

    @RequiresPermissions("wode:stuts:sasas")
    @PostMapping(value = "sasas")
    public R sasas() {
        return R.ok("该功能未实现");
    }

    @RequiresPermissions("wode:stuts:edit")
    @PostMapping(value = "edit")
    public R edit(Stuts stuts) {
        stutsService.updateById(stuts);
        return R.ok();
    }

    @RequiresPermissions("wode:stuts:del")
    @PostMapping(value = "del/{id}")
    public R del(@PathVariable Long id) {
        stutsService.removeById(id);
        return R.ok();
    }

    @RequiresPermissions("wode:stuts:dada")
    @PostMapping(value = "dada")
    public R dada() {
        return R.ok("该功能未实现");
    }

    @GetMapping(value = "get/{id}")
    public R get(@PathVariable Long id) {
        return R.ok(stutsService.getById(id));
    }

}

