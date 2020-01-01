package com.yh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yh.pojo.Funding;
import com.yh.service.HelloService;

@Controller
public class HelloController {
	
	@Autowired
	private HelloService helloService;
	
	@RequestMapping("/")
	public String hello(){
		helloService.selectFundingAll();
		return "index";
	}
}
