package com.qsj.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
@RequestMapping("/test")
@Controller
public class TestUploadController {
	
	@RequestMapping("/showUpload.do")
	public String showUpload(){
		return "upload";
	}
	/**
	 * 实现上传功能
	 * @param file
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("/doUpload.do")
	public String doUpload(MultipartFile file) throws IllegalStateException, IOException{
		
	file.transferTo(
		new File(
			"d:/",file.getOriginalFilename()
			));
		
		return "redirect:../main/showIndex.do";
	}
}





