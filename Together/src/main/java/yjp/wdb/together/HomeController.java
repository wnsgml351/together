package yjp.wdb.together;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yjp.wdb.domain.Date;
import yjp.wdb.domain.Login;
import yjp.wdb.service.LoginService;
import yjp.wdb.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject
	private LoginService loginService;

	@Inject
	private TestService testService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home2() {
		return "redirect:/";
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

}
