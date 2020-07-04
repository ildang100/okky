package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.mapper.ColumnMapper;
import com.ncs.mapper.ComunityMapper;
import com.ncs.mapper.JobsMapper;
import com.ncs.mapper.QnaMapper;
import com.ncs.vo.ColumnVO;
import com.ncs.vo.ComunityVO;
import com.ncs.vo.JobsVO;
import com.ncs.vo.QnaVO;

@Controller
public class TestController {
	
	@Autowired
	ColumnMapper colmapper;
	
	@Autowired
	ComunityMapper commapper;
	
	@Autowired
	JobsMapper jobsmapper;
	
	@Autowired
	QnaMapper qnamapper;
	
	@RequestMapping("/test2")
	public ModelAndView test2(ModelAndView mv) {
		
		ColumnVO vo = new ColumnVO();
		for(int i = 0; i < 1000; i++ ) {
			for(int j = 0; j < 7 ; j++ ) {
				vo.setTitle("관리자가 작성하는 글 select key"+j);
				vo.setContent("관리자가 작성하는 내용 select key"+j);
				vo.setId("admin9"+j);
				vo.setCategory("a");
				colmapper.insert(vo);
			}
			for(int k = 0; k < 7 ; k++ ) {
				vo.setTitle("새로 작성하는 글 select key"+k);
				vo.setContent("새로 작성하는 내용 select key"+k);
				vo.setId("user5"+k);
				vo.setCategory("b");
				colmapper.insert(vo);
			}
		}
		mv.setViewName("redirect:/index");
		return mv;
	}

	@RequestMapping("/test1")
	public ModelAndView test1(ModelAndView mv) {
		ComunityVO vo = new ComunityVO();
		for(int i = 0; i < 1000; i++ ) {
			for(int j = 0; j < 7 ; j++ ) {
				vo.setTitle("관리자가 작성하는 글 select key"+j);
				vo.setContent("관리자가 작성하는 내용 select key"+j);
				vo.setId("admin9"+j);
				vo.setCategory("a");
				commapper.insert(vo);
			}
			for(int k = 0; k < 7 ; k++ ) {
				vo.setTitle("새로 작성하는 글 select key"+k);
				vo.setContent("새로 작성하는 내용 select key"+k);
				vo.setId("user5"+k);
				vo.setCategory("b");
				commapper.insert(vo);
			}
		}
		mv.setViewName("redirect:/index");
		return mv;
	}
	@RequestMapping("/test4")
	public ModelAndView test4(ModelAndView mv) {
		QnaVO vo = new QnaVO();
		for(int i = 0; i < 1000; i++ ) {
			for(int j = 0; j < 7 ; j++ ) {
				vo.setTitle("관리자가 작성하는 글 select key"+j);
				vo.setContent("관리자가 작성하는 내용 select key"+j);
				vo.setId("admin9"+j);
				vo.setCategory("a");
				qnamapper.insert(vo);
			}
			for(int k = 0; k < 7 ; k++ ) {
				vo.setTitle("새로 작성하는 글 select key"+k);
				vo.setContent("새로 작성하는 내용 select key"+k);
				vo.setId("user5"+k);
				vo.setCategory("b");
				qnamapper.insert(vo);
			}
		}
		mv.setViewName("redirect:/index");
		return mv;
	}
	
	@RequestMapping("/test3")
	public ModelAndView test3(ModelAndView mv) {
		JobsVO vo = new JobsVO();
		for(int i = 0; i < 1000; i++ ) {
			for(int j = 0; j < 7 ; j++ ) {
				vo.setTitle("관리자가 작성하는 글 select key"+j);
				vo.setContent("관리자가 작성하는 내용 select key"+j);
				vo.setId("admin9"+j);
				vo.setCategory("a");
				jobsmapper.insert(vo);
			}
			for(int k = 0; k < 7 ; k++ ) {
				vo.setTitle("새로 작성하는 글 select key"+k);
				vo.setContent("새로 작성하는 내용 select key"+k);
				vo.setId("user5"+k);
				vo.setCategory("b");
				jobsmapper.insert(vo);
			}
		}
		mv.setViewName("redirect:/index");
		return mv;
	}

}
