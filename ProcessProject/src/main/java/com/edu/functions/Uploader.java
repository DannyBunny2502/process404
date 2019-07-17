package com.edu.functions;
import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.util.FileCopyUtils;

public class Uploader {
	
	@Resource(name="uploadPath")
	// String uploadPath = "c:/document/upload"로 직접 정해도 된다.
	String uploadPath; //공통사용
	
	public String uploadFile (String originalName, byte[] fileData) throws Exception {
		System.out.println(originalName);
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
