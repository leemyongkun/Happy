package org.happy.poor.files.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.happy.poor.common.util.DigestUtil;
import org.happy.poor.files.model.FileVo;
import org.happy.poor.files.service.IFilesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 * //참조URL : https://github.com/blueimp/jQuery-File-Upload/wiki/Setup
 */
@Controller
@RequestMapping(value = "/files/")
public class FilesController {

	private static final Logger logger = LoggerFactory.getLogger(FilesController.class);

	@Autowired
	IFilesService filesServiceImpl;

	
	
	@RequestMapping(value = "download")
	public ModelAndView download(FileVo fileVo, Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("downloadBean", "downloadFile", filesServiceImpl.downloadFile(fileVo));
		return mav;
	}

	
	@RequestMapping(value = "list")
	public ModelAndView listFiles(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("files/list");

		/*List<FileVo> files = filesServiceImpl.selectAll();
		mav.addObject("files", files);*/
		return mav;
	}
	@RequestMapping(value = "list2")
	public ModelAndView listFiles2(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("files/list2");

		/*List<FileVo> files = filesServiceImpl.selectAll();
		mav.addObject("files", files);*/
		return mav;
	}
	

	@RequestMapping(value = "upload")
	//, method = RequestMethod.POST
	public @ResponseBody Map<String,Object> upload(FileVo fileUpload, HttpServletResponse response,Locale locale, Model model) {
		//response.addHeader("Access-Control-Allow-Origin", "*");
		
		
		List<MultipartFile> attachFiles = fileUpload.getAttachFiles();
		//List<MultipartFile> attachFiles = fileUpload.getUp_file();
		String md5FileName=null;
		Map<String,Object> result = null;
		
		
		for(MultipartFile attachFile : attachFiles){
			System.out.println("### "+attachFile.getOriginalFilename());
			//mili초단위의 수가 다를경우 MD5 Hash값도 달라지므로, 파일 하나를 저장할 시, 공용으로 사용하기 위해 변수를 사용함.
			md5FileName = DigestUtil.getStringToMD5(attachFile.getOriginalFilename());
			filesServiceImpl.save(attachFile, md5FileName);
			filesServiceImpl.insert(attachFile, md5FileName);
			
			result = filesServiceImpl.getJOSNSet(attachFile, md5FileName,"INSERT", null);
		}
		
		return result;
		
	}
	
	@RequestMapping(value = "upload_note")
	//, method = RequestMethod.POST
	public @ResponseBody String upload_note(@RequestParam(value="proc_type")String proto_type,FileVo fileUpload, HttpServletResponse response,Locale locale, Model model) {
		//response.addHeader("Access-Control-Allow-Origin", "*");
		
		System.out.println("proto_type : "+proto_type);
		
		List<MultipartFile> attachFiles=null;
		//List<MultipartFile> attachFiles = fileUpload.getAttachFiles();
		if(proto_type.equals("wic_file_up")){
			 attachFiles = fileUpload.getUpfile();
			 System.out.println("wic_file_up");
		}else{
			 attachFiles = fileUpload.getUp_file();	//quick_up
			 System.out.println("quick_up");
		}
		
		
		String md5FileName=null;
		String result = null;
		String fileName = null;
		
		for(MultipartFile attachFile : attachFiles){
			System.out.println("### "+attachFile.getOriginalFilename());
			fileName = attachFile.getOriginalFilename();
			//mili초단위의 수가 다를경우 MD5 Hash값도 달라지므로, 파일 하나를 저장할 시, 공용으로 사용하기 위해 변수를 사용함.
			md5FileName = DigestUtil.getStringToMD5(attachFile.getOriginalFilename());
			filesServiceImpl.save(attachFile, md5FileName);
			filesServiceImpl.insert(attachFile, md5FileName);
			
		}
		result = "["+fileName+"]http://localhost/attach/images/gallery/18eef152a5d8574569bd19167772ef41";
		
		return result;
		
	}
	
	
	@RequestMapping(value = "delete")
	//, method = RequestMethod.POST
	public @ResponseBody Map<String,Object> delete(@RequestParam String md5FileName, 
													@RequestParam String originalFileName,
													Locale locale, Model model) {
		
		filesServiceImpl.remove(md5FileName);
		filesServiceImpl.delete(md5FileName);
		return filesServiceImpl.getJOSNSet(null, originalFileName, "DELETE", true);
		
	}
	
	

}
