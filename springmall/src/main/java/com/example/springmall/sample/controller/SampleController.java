package com.example.springmall.sample.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.springmall.sample.service.SampleService;
import com.example.springmall.sample.vo.Sample;

@Controller
public class SampleController {
	@Autowired
	private SampleService sampleService;
	//1.샘플목록
	@RequestMapping(value="/sample/sampleList", method=RequestMethod.GET)
	public String sampleList(Model model,  @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) { //Model model = new Model();
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("currentPage", currentPage);
		List<Sample> sampleList = sampleService.getSampleAll(map);
		System.out.println(sampleList.get(0)+"리스트");
		model.addAttribute("sampleList", sampleList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("lastPage", (int)map.get("lastPage"));
		return "/sample/sampleList";
	}
	//2.삭제
	@RequestMapping(value="/sample/removeSample", method=RequestMethod.GET)
	public String removeSample(@RequestParam(value="sampleNo") int sampleNo) {
		if(sampleService.removeSample(sampleNo)==1);{
			System.out.println(sampleNo+"번 데이터 삭제성공");
		}
		return "redirect:/sample/sampleList";
	}	
}
