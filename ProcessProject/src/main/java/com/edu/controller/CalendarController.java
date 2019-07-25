package com.edu.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.edu.domain.DocumentVO;
import com.edu.domain.FolderVO;
import com.edu.domain.likeVO;
import com.edu.domain.moveFolderVO;
import com.edu.service.DocumentService;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
@Controller
@RequestMapping("/calendar")
public class CalendarController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Inject
	DocumentService service;
	
	@Resource(name="document_dir")
	// String uploadPath = "c:/document/upload"로 직접 정해도 된다.
	String uploadPath; //공통사용


	
	// 게시물 목록
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public void calendarGet(Model model) throws Exception {
		
		logger.info("될까요?");
		
		/*
		 * Gson gson = new Gson(); JsonObject object = new JsonObject();
		 * object.addProperty("_id", 1); object.addProperty("title", "거래처미팅");
		 * object.addProperty(
		 * "description","Lorem ipsum dolor sit incid idunt ut Lorem ipsum sit.");
		 * object.addProperty("start", "2019-05-07T09:30"); object.addProperty("end",
		 * "2019-05-07T15:00"); object.addProperty("type", "카테고리1");
		 * object.addProperty("username","diane"); object.addProperty("backgroundColor",
		 * "#D25565"); object.addProperty("textColor", "#ffffff");
		 * object.addProperty("allDay", "false"); String json = gson.toJson(object);
		 * System.out.println(json);
		 */
		

		
	}

} // End - public class documentController
