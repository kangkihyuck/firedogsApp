package com.firedogsapp.controller;

import java.net.InetAddress;
import java.security.MessageDigest;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.firedogsapp.domain.RegisterMemberDAO;
import com.firedogsapp.service.AccountService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/account/api/*")
@AllArgsConstructor
public class AccountRestController {
	private AccountService accountService;

	@Autowired
	private JavaMailSenderImpl mailSender;

	// 로그인 관련
	@RequestMapping(value = "/processLogin", method = RequestMethod.POST)
	public ResponseEntity<String> processLogin(HttpServletRequest request, HttpSession httpSession) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String retVal = "";
		String responseData = "";

		retVal = passwordEncryption(password);

		System.out.println("username : " + username);
		System.out.println("password : " + password + " / 암호화 password : " + retVal);

		try {
			String select_data = accountService.select_acccount(username, retVal);
			if (null == select_data || "".equals(select_data)) {
				responseData = "No Account";
			} else {
				responseData = "Success";
				httpSession.setAttribute("username", username);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity(responseData, HttpStatus.OK);
	}

	// 아이디 중복체크
	@RequestMapping(value = "checkID", method = RequestMethod.POST)
	public ResponseEntity<String> checkID(HttpServletRequest request) {
		String checkID = request.getParameter("checkid");
		String responseData = "";
		System.out.println("checkid : " + checkID);

		try {
			String select_data = accountService.select_user_id_check(checkID);

			if (null == select_data || "".equals(select_data)) {
				responseData = "200"; // 사용 가능
			} else {
				responseData = "201"; // 사용 불가
			}
		} catch (Exception e) {

		}
		return new ResponseEntity(responseData, HttpStatus.OK);
	}

	// 회원 등록 api
	@RequestMapping(value = "register_member", method = RequestMethod.POST)
	public ResponseEntity<String> register_member(HttpServletRequest request) {
		String responseData = "";

		RegisterMemberDAO registerMember = new RegisterMemberDAO();

		registerMember.setCompany_name(request.getParameter("company_name"));
		registerMember.setUser_name(request.getParameter("user_name"));
		registerMember.setPhone_no(request.getParameter("phone_no"));
		registerMember.setUser_id(request.getParameter("checkid"));
		registerMember.setPw(request.getParameter("pw"));
		registerMember.setPwok(request.getParameter("pwok"));
		registerMember.setAddress(request.getParameter("addr1") + request.getParameter("addr2"));

		/*
		 * String company_name = request.getParameter("company_name"); String user_name
		 * = request.getParameter("user_name"); String phone_no =
		 * request.getParameter("phone_no"); String user_id =
		 * request.getParameter("checkid"); String pw = request.getParameter("pw");
		 * String pwok = request.getParameter("pwok"); String address =
		 * request.getParameter("addr1") + request.getParameter("addr2");
		 */

		if (null == registerMember.getCompany_name() || "".equals(registerMember.getCompany_name())) {
			responseData = "201"; // 판매점명 x
		} else if (null == registerMember.getUser_name() || "".equals(registerMember.getUser_name())) {
			responseData = "202"; // 사용자명 x
		} else if (null == registerMember.getPhone_no() || "".equals(registerMember.getPhone_no())) {
			responseData = "203"; // 전화번호 x
		} else if (null == registerMember.getUser_id() || "".equals(registerMember.getUser_id())) {
			responseData = "204"; // 아이디 x
		} else if (null == registerMember.getPw() || "".equals(registerMember.getPw())) {
			responseData = "205"; // 비밀번호 x
		} else if (null == registerMember.getPwok() || "".equals(registerMember.getPwok())) {
			responseData = "206"; // 비밀번호 확인 x
		} else if (null == registerMember.getAddress() || "".equals(registerMember.getAddress())) {
			responseData = "207"; // 주소 x
		} else {
			if (registerMember.getPw().equals(registerMember.getPwok())) {
				String ip = request.getHeader("X-Forwarded-For");
				if (ip == null)
					ip = request.getRemoteAddr();

				System.out.println("ip : " + ip);

				registerMember.setPw(passwordEncryption(registerMember.getPw()));
				registerMember.setPwok(passwordEncryption(registerMember.getPwok()));

				try {
					// accountService.register_member(registerMember);
				} catch (Exception e) {
					e.printStackTrace();
				}

				responseData = "200"; // 정상 등록
			} else {
				responseData = "300"; // 비밀번호 / 비밀번호 확인 다름
			}
		}

		return new ResponseEntity(responseData, HttpStatus.OK);
	}

	// 아이디 찾기
	@RequestMapping(value = "searchId", method = RequestMethod.POST)
	public ResponseEntity<String> searchId(HttpServletRequest request) {
		RegisterMemberDAO registerMember = new RegisterMemberDAO();
		String responseData = "";

		registerMember.setUser_name(request.getParameter("user_name"));
		registerMember.setPhone_no(request.getParameter("phone_no"));

		try {
			String user_id = accountService.search_id(registerMember);
			if (null == user_id || "".equals(user_id)) {
				responseData = "no data";
			} else {
				responseData = user_id;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity(responseData, HttpStatus.OK);
	}

	// 비밀번호 찾기
	@RequestMapping(value = "searchPw", method = RequestMethod.POST)
	public ResponseEntity<String> searchPw(HttpServletRequest request) {
		RegisterMemberDAO registerMember = new RegisterMemberDAO();
		String responseData = "";

		registerMember.setUser_id(request.getParameter("user_id"));
		registerMember.setUser_name(request.getParameter("user_name"));
		registerMember.setPhone_no(request.getParameter("phone_no"));
		registerMember.setEmail(request.getParameter("email"));

		try {
			String user_pw = accountService.search_pw(registerMember);
			if (null == user_pw || "".equals(user_pw)) {
				responseData = "no data";
			} else {
				responseData = "success";
				// email 전송 로직 기능 구현
//				final MimeMessagePreparator preparator = new MimeMessagePreparator() {
//					@Override
//					public void prepare(MimeMessage mimeMessage) throws Exception {
//						final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
//						helper.setFrom("oper5032@gmail.com");
//						helper.setTo("kkh@gloscom.com");
//						helper.setSubject("테스트");
//						helper.setText("내용입니다.", true);
//					}
//				};
//
//				mailSender.send(preparator);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity(responseData, HttpStatus.OK);
	}

	public String passwordEncryption(String pw) {
		String retVal = "";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.update(pw.getBytes());

			byte byteData[] = md.digest();

			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}

			retVal = sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return retVal;
	}
}
