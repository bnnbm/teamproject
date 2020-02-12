package controller;

import java.security.MessageDigest;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import logic.Item;
import logic.ShopService;
import logic.User;
import util.CipherUtil;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private ShopService service;

	@GetMapping("*")
	public String form(Model model) {
		model.addAttribute(new User());
		return null;
	}

	// 1. 비밀번호 : 해쉬화 db에 저장
	// 2. email : id의 해쉬값에서 키 결정. 암호화 db에 저장
	@PostMapping("userEntry")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult, String email[], HttpServletRequest request)
			throws Exception {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			bresult.reject("error.input.user");
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}

		// useraccount 테이블에 내용 등록. login.jsp
		try {
			String address = user.getZonecode() + ',' + user.getAddress1() + ',' + user.getAddress_etc();
			user.setAddress(address);
			user.setPass(CipherUtil.makehash(user.getPass()));
			user.setEmail(email[0] + email[1]);
			service.insert(user, request);
			mav.setViewName("redirect:../broadcast/index.shop");
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
			bresult.reject("error.duplicate.user");
		}
		return mav;
	}

	@PostMapping("login")
	public ModelAndView login(@Valid User user, BindingResult bresult, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			bresult.reject("error.input.user");
			System.out.println(bresult);
			return mav;
		}

		try {
			User dbUser = service.getUser(user.getUserid());
			user.setPass(CipherUtil.makehash(user.getPass())); // Hash 암호화

			if (dbUser == null) {
				bresult.reject("error.login.notfound");
				return mav;
			}
			
			if (!dbUser.getPass().equals(user.getPass())) {
				bresult.reject("error.login.password");
				return mav;
			} else {
				String year = service.getmaxYear(user.getUserid());
				dbUser.setYear(year);
				session.setAttribute("loginUser", dbUser);
				mav.setViewName("redirect:../broadcast/index.shop");
			}

		} catch (LoginException e) {
			e.printStackTrace();
			bresult.reject("error.login.id");
		}
		return mav;

	}

	// 네이버 로그인
	@RequestMapping(value = "login1", method = RequestMethod.POST)
	@ResponseBody
	public String login1(String id, String nickname, HttpSession session) {
		try {

			User dbUser = service.getUser("n*" + id);
			if (dbUser == null) {
				session.setAttribute("email", "n*" + id);
				session.setAttribute("nickname", nickname);
				return "userEntry.shop";
			} else {
				String year = service.getmaxYear("n*" + id);
				dbUser.setYear(year);
				session.setAttribute("loginUser", dbUser);

			}
		} catch (LoginException e) {
			e.printStackTrace();

		}
		return "../broadcast/index.shop";

	}

	// 카카오톡 로그인
	@RequestMapping(value = "login3", method = RequestMethod.POST)
	@ResponseBody
	public String login3(String email, String nickname, String profile, HttpSession session) throws Exception {
		try {
			email = email.substring(1, email.length() - 1);
			User dbUser = service.getUser(email);
			if (dbUser == null) {

				session.setAttribute("email", email);
				session.setAttribute("profile", profile.substring(1, profile.length() - 1));
				session.setAttribute("nickname", nickname.substring(1, nickname.length() - 1));
				return "userEntry.shop";
			} else {
				String year = service.getmaxYear(email);
				dbUser.setYear(year);
				session.setAttribute("loginUser", dbUser);

			}
		} catch (LoginException e) {
			e.printStackTrace();

		}
		return "../broadcast/index.shop";

	}

	// HttpServletRequest request
	@RequestMapping(value = "logout", method = RequestMethod.POST)
	@ResponseBody
	public String logout(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		model.addAttribute(new User());
		return request.getContextPath() + "/user/login.shop";

	}

	@RequestMapping(value = "logout1")
	public String logout1(Model model, HttpServletRequest request) {
		System.out.println("naver로그아웃입니다.");
		HttpSession session = request.getSession();
		session.invalidate();
		model.addAttribute(new User());
		return "redirect:login.shop";

	}

	@RequestMapping("main") // UserLoginAspect 클래스에 해당하는 핵심로직
	public String checkmain(HttpSession session) {
		return "user/main";
	}

	@GetMapping(value = { "update", "delete" })
	public ModelAndView checkview(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(id);
		try {
			String userid = CipherUtil.makehash(user.getUserid());
			String email = CipherUtil.decrypt(user.getEmail(), userid.substring(0, 16));
			user.setEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("user", user);
		return mav;
	}

}