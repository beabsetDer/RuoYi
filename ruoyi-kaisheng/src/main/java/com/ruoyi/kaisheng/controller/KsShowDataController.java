package com.ruoyi.kaisheng.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ruoyi.common.core.controller.BaseController;

@Controller
@RequestMapping("/ks/showdata")
public class KsShowDataController extends BaseController {
	private String prefix = "ks/showdata";

	@RequiresPermissions("ks:showdata:view")
	@GetMapping()
	public String showdata() {
		return prefix + "/showdata";
	}
}
