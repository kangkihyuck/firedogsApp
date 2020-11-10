package com.firedogsapp.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.firedogsapp.dao.RegisterBoardDAO;
import com.firedogsapp.service.BoardService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/board/api/*")
@AllArgsConstructor
public class BoardRestController {
	private BoardService boardService;

	@RequestMapping(value = "/board_register", method = RequestMethod.POST)
	public ResponseEntity<String> insertBoard(HttpServletRequest request, MultipartFile[] file1) {
		RegisterBoardDAO registerBoard = new RegisterBoardDAO();

		String responseData = "";

		registerBoard.setTitle(request.getParameter("title"));
		registerBoard.setCategory(request.getParameter("category"));
		registerBoard.setUser_id(request.getParameter("user_id"));
		registerBoard.setPhone_no(request.getParameter("phone_no"));
		registerBoard.setContents(request.getParameter("contents"));
		registerBoard.setFile1(request.getParameter("file1"));
		registerBoard.setFile2(request.getParameter("file2"));
		registerBoard.setFile3(request.getParameter("file3"));


		for (int i = 0; i < file1.length; i++) {
//			File saveFile = new File("C:\\Users\\FD-02\\Documents\\workspace-sts-3.9.8.RELEASE\\FiredogsAppProject01\\src\\main\\webapp\\resources\\static\\upload", file1[i].getOriginalFilename());
			File saveFile = new File("\\usr\\local\\tomcat\\webapps\\FiredogsAppProject01\\resources\\static\\upload", file1[i].getOriginalFilename());
			System.out.println("파일이름 : " + file1[i].getOriginalFilename());

			if(null != file1[i].getOriginalFilename() && !"".equals(file1[i].getOriginalFilename())) {
				try {
					file1[i].transferTo(saveFile);
					if(i == 0) {
						registerBoard.setFile1(file1[i].getOriginalFilename());
					} else if(i == 1) {
						registerBoard.setFile2(file1[i].getOriginalFilename());
					} else if(i == 2) {
						registerBoard.setFile3(file1[i].getOriginalFilename());
					} else {}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		if ("삽니다".equals(registerBoard.getCategory())) {
			// 삽니다 테이블 insert
			registerBoard.setCategory("B");

			try {
				boardService.insert_board_data(registerBoard);
				responseData = "200";
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("팝니다".equals(registerBoard.getCategory())) {
			// 팝니다 테이블 insert
			registerBoard.setCategory("S");

			try {
				boardService.insert_board_data(registerBoard);
				responseData = "201";
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("구인".equals(registerBoard.getCategory())) {
			// 구인 테이블 insert
			registerBoard.setCategory("I");

			try {
				boardService.insert_board_job_data(registerBoard);
				responseData = "202";
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("구직".equals(registerBoard.getCategory())) {
			// 구직 테이블 insert
			registerBoard.setCategory("S");

			try {
				boardService.insert_board_job_data(registerBoard);
				responseData = "203";
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			responseData = "300";
		}

		return new ResponseEntity(responseData, HttpStatus.OK);
	}

}
