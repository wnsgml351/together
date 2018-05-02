package yjp.wdb.together;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Login;
import yjp.wdb.domain.Register;
import yjp.wdb.service.LoginService;
import yjp.wdb.service.RegisterService;
import yjp.wdb.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject
	private RegisterService registerService;

	@Inject
	private LoginService loginService;

	@Inject
	private TestService testService;

	/*
	 * 
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home2() {
		return "redirect:/";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String registerForm() {
		return "registerForm";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String insert(Register register, RedirectAttributes rttr) throws Exception {

		registerService.insert(register);

		rttr.addAttribute("register", "gggg");

		return "redirect:/";
	}

	@RequestMapping("confirmId")
	@ResponseBody
	public String confirmId(@RequestParam(value = "id", required = false) String id) throws Exception {
		System.out.println("controller : " + registerService.confirmId(id));

		return "" + registerService.confirmId(id);
	}

	@RequestMapping(value = "monitoring", method = RequestMethod.GET)
	public void monitoring() {

	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpSession session, Login login) throws Exception {
		System.out.println(login.getId() + " = " + login.getPassword());

		Login l = loginService.login(login);

		if (l.getStatus() == 1) {
			System.out.println("dd");
			session.setAttribute("login", login);
			return "home";
		} else {
			System.out.println("nn");
			return "redirect:login";
		}
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) throws Exception {

		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "control", method = RequestMethod.GET)
	public void control() {
	}

	@RequestMapping(value = "buildingRegister", method = RequestMethod.GET)
	public String buildingRegister(Model model, HttpSession session) {
		model.addAttribute("sessionId", session.getAttribute("login"));
		return "buildingRegister";
	}

	@RequestMapping(value = "Bregist", method = RequestMethod.GET)
	public String Bregist(Model model, Building building) throws Exception {
		registerService.insertAdd(building);
		model.addAttribute("build", building);
		return "roomRegister";
	}

	@RequestMapping(value = "roomRegister", method = RequestMethod.GET)
	public String roomRegister(Model model, HttpSession session) {
		model.addAttribute("sessionId", session.getAttribute("login"));
		return "roomRegister";
	}

	@RequestMapping(value = "groupList", method = RequestMethod.GET)
	public String groupList(Model model, HttpSession session) {
		model.addAttribute("sessionId", session.getAttribute("login"));
		return "grouplist";
	}

	@RequestMapping(value = "rootCheck", method = RequestMethod.GET)
	@ResponseBody
	public Groups rootCheck(Groups groups) throws Exception {
		System.out.println("넘어온값" + groups.getId());
		System.out.println("넘어온값 " + groups.getSelectType());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", groups.getId());
		map.put("selectType", groups.getSelectType());

		Groups g = registerService.root(map);

		System.out.println("아이디" + g.getId());
		System.out.println("타입" + g.getSelectType());
		System.out.println("오늘" + g.getToday());
		System.out.println("토탈" + g.getTotal());
		// g.setToday(22);
		return g;
	}

}
