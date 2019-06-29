package com.tiantiantao.controller.background;

import com.tiantiantao.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

@Controller
public class TypeBackController {

    @Autowired
    TypeService typeService;

    @Autowired
    HttpServletRequest request;
}
