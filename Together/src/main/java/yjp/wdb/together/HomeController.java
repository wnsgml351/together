package yjp.wdb.together;

import java.util.ArrayList;
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

import yjp.wdb.domain.Datas;
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

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public void test() {

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		System.out.println("/");
		return "home";
	}

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public void main() {

	}

	@RequestMapping(value = "guestMain", method = RequestMethod.GET)
	public String guestMain() {
		return "guest/main";
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home2() {
		System.out.println("home");
		return "redirect:/";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String registerForm() {
		return "registerForm";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String insert(Register register, RedirectAttributes rttr) throws Exception {
		registerService.insert(register);
		rttr.addFlashAttribute("register", "이것은 경산");
		return "redirect:/";
	}

	@RequestMapping(value = "myPage", method = RequestMethod.GET)
	public void myPage() throws Exception {

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
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:home";
	}

	@RequestMapping(value = "control", method = RequestMethod.GET)
	public void control() {
	}

	@RequestMapping(value = "groupRegister", method = RequestMethod.GET)
	public String buildingRegister(Model model, HttpSession session) {
		model.addAttribute("sessionId", session.getAttribute("login"));
		return "groupRegister";
	}

	@RequestMapping(value = "Bregist", method = RequestMethod.GET)
	public String Bregist(Model model, Groups groups, String id) throws Exception {
		int usergroupno = registerService.userGroupNo(id);
		System.out.println("아이디값 " + id + "아이디에 대한 유저그룹번호" + usergroupno);
		groups.setParent_group(usergroupno);
		System.out.println("그룹스 저장된 값들" + groups.getGroup_name() + "부모그룹 no" + groups.getParent_group());
		registerService.insertGroups(groups);
		System.out.println("넘어온값:" + groups.getGroup_name());
		int result = registerService.selectGroupsNo(groups.getGroup_name());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("group_no", result);
		map.put("id", id);
		model.addAttribute("build", map);
		return "roomRegister";
	}

	@RequestMapping(value = "roomList", method = RequestMethod.GET)
	public String roomRegister(Model model, HttpSession session) throws Exception {
		Login login = (Login) session.getAttribute("login");
		System.out.println("아이디 값:" + login.getId());
		int parent_group = registerService.userGroupNo(login.getId());
		System.out.println("유저 그룹번호" + parent_group);
		List<Groups> groups = registerService.roomList(parent_group);
		for (int i = 0; i < groups.size(); i++) {
			System.out.println("그룹 번호" + groups.get(i).getGroup_no());
			System.out.println("그룹 이름" + groups.get(i).getGroup_name());
			System.out.println("그룹 부모 번호" + groups.get(i).getParent_group());
		}
		model.addAttribute("groups", groups);
		return "roomList";
	}

	@RequestMapping(value = "groupRepeat", method = RequestMethod.GET)
	@ResponseBody
	public Groups groupRepeat(Groups groups) throws Exception {
		System.out.println("넘어온값" + groups.getGroup_name());
		System.out.println("넘어온값 " + groups.getParent_group());
		registerService.insertGroups(groups);
		return groups;

	}

	@RequestMapping(value = "roomConfirm", method = RequestMethod.GET)
	@ResponseBody
	public int roomConfirm(String group_name) throws Exception {
		System.out.println("roomConfirm에 넘어온 값 : " + group_name);
		int result = registerService.confirmRoomNo(group_name);
		return result;
	}

	@RequestMapping(value = "consentList", method = RequestMethod.GET)
	public String consentList(Model model, HttpSession session) throws Exception {
		Login login = (Login) session.getAttribute("login");
		System.out.println("아이디 값:" + login.getId());
		int parent_group = registerService.userGroupNo(login.getId());
		System.out.println("유저 그룹번호" + parent_group);
		List<Groups> groups = registerService.roomList(parent_group);
		ArrayList<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < groups.size(); i++) {
			list.add(i, groups.get(i).getGroup_no());
		}
		for (int i = 0; i < list.size(); i++) {
			System.out.println("리스트값:" + list.get(i));
		}
		return "consentList";
	}

	@RequestMapping(value = "consentlist", method = RequestMethod.GET)
	@ResponseBody
	public List<Groups> consentlist(int parent_group) throws Exception {
		List<Groups> groups = registerService.consentlist(parent_group);
		for (int i = 0; i < groups.size(); i++) {
			System.out.println("콘센트 이름 " + groups.get(i).getGroup_name());
			System.out.println("콘센트 해당 번호" + groups.get(i).getGroup_no());
			System.out.println("콘센트 부모 번호" + groups.get(i).getParent_group());
		}
		return groups;
	}

	@RequestMapping(value = "totalList", method = RequestMethod.GET)

	public String totallist(Model model, HttpSession session) throws Exception {
		Login login = (Login) session.getAttribute("login");
		System.out.println("아이디 값:" + login.getId());
		int group_no = registerService.userGroupNo(login.getId());
		System.out.println("유저 그룹번호" + group_no);
		Groups group = registerService.groupsData(group_no);

		List<Groups> subgroup1 = registerService.consentlist(group.getGroup_no());
		List<Groups> subgroup2 = registerService.consentlist(subgroup1.get(0).getGroup_no());

		model.addAttribute("root", group.getGroup_name());
		model.addAttribute("sub1", subgroup1);
		model.addAttribute("sub2", subgroup2);

		return "totallist";

	}

	@RequestMapping(value = "substringData", method = RequestMethod.GET)
	@ResponseBody
	public List<String> substringData(int plug_no) throws Exception {
		List<String> substr = registerService.substrData(plug_no);
		for (int i = 0; i < substr.size(); i++) {
			System.out.println("년도 날짜 일 시간 짜른 값" + substr.get(i));
		}
		return substr;
	}

	@RequestMapping(value = "AvgData", method = RequestMethod.GET)
	@ResponseBody
	public List<Datas> AvgData(int plug_no) throws Exception {
		List<Datas> datas = registerService.avgtimeData(plug_no);
		for (int i = 0; i < datas.size(); i++) {
			System.out.println("온값들" + datas.get(i).getAmpere());
		}
		return datas;
	}

}
