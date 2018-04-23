package yjp.wdb.together;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "graphView", method = RequestMethod.GET)
	public void graphView() {

	}
	
	@RequestMapping(value="monitoring", method = RequestMethod.GET)
	public void monitoring() {
		
	}
}
