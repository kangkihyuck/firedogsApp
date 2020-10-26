package com.firedogsapp.controller;

import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.firedogsapp.service.AccountService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/account/api/*")
@AllArgsConstructor
public class AccountRestController {
	private AccountService accountService;
	
	@RequestMapping(value = "/processLogin", method = RequestMethod.POST)
	public ResponseEntity<String> processLogin(HttpServletRequest request, HttpSession httpSession) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String retVal = "";
		String responseData = "";
		
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.update(password.getBytes());
			
			byte byteData[] = md.digest();
			
			StringBuffer sb = new StringBuffer();
			for(int i=0; i<byteData.length; i++) {
                sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
            }
 
            retVal = sb.toString();
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("username : " + username);
		System.out.println("password : " + password + " / 암호화 password : " + retVal);
		
		try {
			String select_data = accountService.select_acccount(username, retVal);
			if(null == select_data || "".equals(select_data)) {
				responseData = "No Account";
			} else {
				responseData = "Success";
				httpSession.setAttribute("username", username);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity(responseData, HttpStatus.OK);
	}
}
