package com.example.springmall;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HiController {
	@RequestMapping("/hi")
	public void hi() {
		System.out.println("Hi Spring boot!");
	}
}