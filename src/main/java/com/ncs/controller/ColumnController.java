package com.ncs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.ColumnService;
import com.ncs.vo.ColumnVO;

@RequestMapping(value = "/column/*")
@Controller
public class ColumnController {
	
	@Autowired
	ColumnService service;
	
	@RequestMapping(value = "/list")
	public ModelAndView list(ModelAndView mv) {
		List<ColumnVO> list = service.selectList();
		if (list != null) {
			mv.addObject("Banana",list);
		}else {
			mv.addObject("message","등록된 글이 없습니다.");
		}
		mv.setViewName("column/columnList");
		return mv;
	}

}
