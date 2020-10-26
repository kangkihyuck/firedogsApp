package com.firedogsapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.firedogsapp.service.BoardService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/board/api/*")
@AllArgsConstructor
public class BoardRestController {
	
	private BoardService boardService;
	
//	@RequestMapping(value = "/insertBoard", method = RequestMethod.POST)
//	public ResponseEntity<String> insertBoard(HttpServletRequest request) {
//		
//		String title = request.getParameter("title");
//		String category = request.getParameter("category");
//		
//		return new ResponseEntity("", HttpStatus.OK);
//	}

}
