package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import logic.Item;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("shop")
public class ShopController {

	
	@Autowired
	private ShopService service;
	
	@GetMapping("*")
	public ModelAndView all() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@GetMapping("mypage")
	public ModelAndView mypage(String userid, HttpSession session) {
		User sessionid = (User)session.getAttribute("loginUser");
		if(!userid.equals(sessionid.getUserid())) {
			throw new LoginException("본인 아이디가 아닙니다.", "../shop/mypage.shop?userid="+sessionid.getUserid());
		}
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@GetMapping("index")
	public ModelAndView index(String userid) {
		ModelAndView mav = new ModelAndView();
		List<Item> itemlist = service.itemlist(userid);
		mav.addObject("itemlist",itemlist);
		return mav;
	}
}
