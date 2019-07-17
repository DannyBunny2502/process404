package com.edu.controller.upload;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.edu.domain.BoardVO;
import com.edu.service.BoardService;

@Controller
public class docController {
	
	//로깅 메시지를 사용하기 위해서
	private static final Logger logger =
			LoggerFactory.getLogger(docController.class);
	
	//servlet-context.xml의 bean 참조하기
	@Resource(name="uploadPath")
	// String uploadPath = "c:/document/upload"로 직접 정해도 된다.
	String uploadPath; //공통사용
	
	// 업로드 폼 페이지 이동
	@RequestMapping(value="/document/upload", method=RequestMethod.GET)
	public String uploadGet() {
		return "document/upload";
	}
	
	// 업로드 내용 처리
	@RequestMapping(value="/document/upload", method=RequestMethod.POST)
	public ModelAndView uploadPost(MultipartFile file, ModelAndView mav) throws Exception {
		
		logger.info("파일이름 : "+ file.getOriginalFilename() );
		logger.info("파일크기 : "+ file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());
		
		String savedName=file.getOriginalFilename();
		savedName=uploadFile(savedName,file.getBytes());
		
		mav.setViewName("document/uploadResult"); // 뷰의 결과화면
		mav.addObject("savedName",savedName);
		
		return mav;
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
	

		
}
