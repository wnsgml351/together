package yjp.wdb.together;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import yjp.wdb.domain.ElecData;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Login;
import yjp.wdb.domain.Register;
import yjp.wdb.service.ElecDataService;
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

	@Inject
	private ElecDataService Elecdataservice;

	/*
	 * 
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String main() {
		return "main";
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

		rttr.addFlashAttribute("register", "this is 경산");

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
			return "redirect:main";
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
		System.out.println("�꽆�뼱�삩媛�" + groups.getId());
		System.out.println("�꽆�뼱�삩媛� " + groups.getSelectType());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", groups.getId());
		map.put("selectType", groups.getSelectType());

		Groups g = registerService.root(map);

		System.out.println("�븘�씠�뵒" + g.getId());
		System.out.println("���엯" + g.getSelectType());
		System.out.println("�삤�뒛" + g.getToday());
		System.out.println("�넗�깉" + g.getTotal());
		// g.setToday(22);
		return g;
	}

	@RequestMapping(value = "ansim")
	public List<List<ElecData>> ansim(Model model) throws Exception {
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd").format(new Date());
		System.out.println(timeStamp);
		List<ElecData> dataMonth = Elecdataservice.dataMonth();
		List<List<ElecData>> list = Elecdataservice.ansim();
		List<List<ElecData>> li = Elecdataservice.ansimall();

		model.addAttribute("dataMonth", dataMonth);
		model.addAttribute("list", list.get(0).get(0).getWatt()); // �쟾�썡

		model.addAttribute("li", li.get(0).get(0).getWatt());
		System.out.println(list.get(0).get(0).getWatt()); // 5�썡
		System.out.println(li.get(0).get(0).getWatt()); // 4�썡
		return list;
	}

	@RequestMapping(value = "ansimD")
	public List<List<ElecData>> ansimD(Model model) throws Exception {
		List<ElecData> ansimDay = Elecdataservice.ansimDayAll();
		List<List<ElecData>> list = Elecdataservice.ansimdayLast();

		model.addAttribute("ansimDay", ansimDay);
		model.addAttribute("list", list.get(0).get(0).getWatt());

		return list;

	}

	@RequestMapping(value = "ansimMonth")
	public List<List<ElecData>> ansimMonth(Model model) throws Exception {
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd").format(new Date());
		System.out.println(timeStamp);
		List<ElecData> dataMonth = Elecdataservice.dataMonth();
		List<List<ElecData>> list = Elecdataservice.ansim();
		List<List<ElecData>> li = Elecdataservice.ansimall();

		model.addAttribute("dataMonth", dataMonth);
		model.addAttribute("list", list.get(0).get(0).getWatt());
		model.addAttribute("li", li.get(0).get(0).getWatt());
		System.out.println(list.get(0).get(0).getWatt()); // 5�썡
		System.out.println(li.get(0).get(0).getWatt()); // 4�썡
		return list;
	}

	@RequestMapping(value = "ansimDay")
	public List<List<ElecData>> ansimDay(Model model) throws Exception {
		List<ElecData> ansimDay = Elecdataservice.ansimDayAll();
		List<List<ElecData>> list = Elecdataservice.ansimdayLast();

		model.addAttribute("ansimDay", ansimDay);
		model.addAttribute("list", list.get(0).get(0).getWatt());

		return list;

	}

}
