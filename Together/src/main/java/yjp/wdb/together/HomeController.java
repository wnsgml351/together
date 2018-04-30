package yjp.wdb.together;

import java.io.Closeable;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yjp.wdb.domain.Login;
import yjp.wdb.service.LoginService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject
	private LoginService loginService;

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

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public void test() {
		try {
			URL url = new URL("http://net.yjc.ac.kr:100/isocketsapi?cmd=getSensorPortData&devid=361A24C0B62ABA394510230920B88641&port=1");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
