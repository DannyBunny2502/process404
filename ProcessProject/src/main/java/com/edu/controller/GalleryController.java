package com.edu.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.edu.domain.GalleryVO;
import com.edu.domain.likeVO;
import com.edu.service.GalleryService;

@Controller
@RequestMapping("/gallery")
public class GalleryController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Inject
	GalleryService service;
	
	@Resource(name="gallery_img")
	// String uploadPath = "c:/document/upload"로 직접 정해도 된다.
	String uploadPath; //공통사용

	// 아이디검사
	/*
	 * @RequestMapping(value = "/idcheck", method = RequestMethod.GET) public void
	 * getIdcheck() throws Exception {
	 * 
	 * }
	 */

	// 날짜 타입 데이터 변환
	@InitBinder
	protected void initBinder(WebDataBinder wdb) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		wdb.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	// 게시물 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception {

		logger.info("GalleryController list called.....");

		List<GalleryVO> gallery = null;
		logger.info("1");
		gallery = service.list();
		logger.info("2");

		model.addAttribute("gallery", gallery);
	}

	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {
		System.out.println("postWrite() GET");
	}

	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(GalleryVO vo, MultipartFile file) throws Exception {
		System.out.println("postWrite() POST");
		
		String fileName=file.getOriginalFilename();
		fileName=uploadFile(fileName,file.getBytes());
		
		vo.setNewPicture(fileName);
		System.out.println("들어갔어?");
		service.upload(vo);
		
		System.out.println("여기?");
		return "redirect:/gallery/list";
	}

	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("gallery_code") String gallery_code, Model model) throws Exception {

		GalleryVO gallery = null;
		String likeCnt=null;
		
		gallery = service.view(gallery_code); 
		
		likeCnt= service.like(gallery_code);
		 service.viewCnt(gallery);
	
		/*
		 * likeVO lvo = null; lvo.setGallery_code(gallery_code); lvo.setId(id);
		 * if(service.likeCheck(likeData)==null) { // 값이 없을 때
		 */		 
		 
		model.addAttribute("gallery", gallery);
		model.addAttribute("likeCnt",likeCnt);
	}

	// 게시물 수정
	
	  @RequestMapping(value = "/update", method = RequestMethod.GET) 
	  public void getUpdate(@RequestParam("gallery_code") String gallery_code, Model model) throws  Exception { 
		  
		  System.out.println("get");
		  
		  GalleryVO gallery = null; 
		  gallery = service.view(gallery_code);
	  
		  model.addAttribute("gallery", gallery); 
	  
	  }
	 

	// 게시물 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String postUpdate(GalleryVO vo, MultipartFile file) throws Exception {
		  System.out.println("post");
		
		GalleryVO deleteVO = service.view(vo.getGallery_code());
		
		deleteFile(deleteVO.getNewPicture());
		
		String fileName = file.getOriginalFilename();
		fileName=uploadFile(fileName,file.getBytes());

		vo.setNewPicture(fileName);
		service.update(vo);
		
		return "redirect:/gallery/list";
	}

	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public void getDelete(@RequestParam("gallery_code") String gallery_code, Model model) throws Exception {
		GalleryVO gallery = null;

		gallery = service.view(gallery_code);

		model.addAttribute("gallery", gallery);
	}

	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String postDelete(GalleryVO vo) throws Exception {
		
		GalleryVO deleteVO = service.view(vo.getGallery_code());//기존 파일 vo 담음
		
		deleteFile(deleteVO.getNewPicture()); //기존에 있던 파일 삭제

		service.view(vo.getGallery_code());
		
		service.delete(vo.getGallery_code());

		return "redirect:/gallery/list";
	}
	
	// 1일 때 UP(+1), 0일 때 DOWN(-1)
	@ResponseBody
	@RequestMapping(value="/thumbs", method = RequestMethod.POST)
	public Object thumbsPost(@RequestBody likeVO likeData, HttpServletRequest httpRequest) throws Exception {
	
			
		if(service.likeCheck(likeData)==null) { // 값이 없을 때
			System.out.println("좋아요!");
			likeData.setHeart("0");
			service.likeUp(likeData);

		}else if(service.likeCheck(likeData)!=null){  // 값이 있을 때
			likeData.setHeart("1");
			System.out.println("좋아요 취소!");
			service.likeDown(likeData.getId());
			
		}
		
		System.out.println(likeData.getCheck());
		System.out.println(likeData.getGallery_code());
		System.out.println(likeData.getId());
		
		String likeCount= service.like(likeData.getGallery_code());
		System.out.println(likeCount);
		
		likeData.setCheck(likeCount);
		
		return likeData;
	}

	@ResponseBody
	@RequestMapping(value="/thumbsView", method = RequestMethod.POST)
	public String thumbsGet(@RequestBody likeVO likeData, HttpServletRequest httpRequest) throws Exception {
	
		System.out.println("thumbssssssssss");
		if(service.likeCheck(likeData)==null) { // 값이 없을 때
			System.out.println("좋아요!");
			likeData.setHeart("0");

		}else if(service.likeCheck(likeData)!=null){  // 값이 있을 때
			likeData.setHeart("1");
			System.out.println("좋아요 취소!");
		
			
		}
		
		return likeData.getHeart();
	}

	
	
	
	String uploadFile (String originalName, byte[] fileData) throws Exception {
		
		// Universal Unique Identifier : 범용고유식별자 랜덤발생
		UUID uid= UUID.randomUUID();
		String savedName = uid.toString()+"_"+originalName;
		
		// new File (디렉토리, 파일이름)
		File target = new File (uploadPath, savedName); 
		
		// 첨부파일을 임시디렉토리에서 우리가 지정한 디렉토리로 복사한다.
		FileCopyUtils.copy(fileData, target);
		
		return savedName; // 복사한 파일ㅇ 이름을 되돌려준다
	}
	
	void deleteFile(String fileName) {
		System.out.println(uploadPath+fileName);
		
		File file = new File(uploadPath+"/"+fileName);
		
		if(file.exists()) {
			file.delete();
			System.out.println("파일삭제완룡");
		}else
			System.out.println("파일삭제실팽");
	}

} // End - public class galleryController
