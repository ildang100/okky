package com.ncs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping(value = "/member")
@Controller
public class MemberController {

    @RequestMapping(value = "/login")
    public void login() {

    }

}
