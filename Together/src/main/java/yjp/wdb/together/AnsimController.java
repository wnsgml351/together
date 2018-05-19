package yjp.wdb.together;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yjp.wdb.service.ElecDataService;

@Controller
@RequestMapping(value = "Ansim")
public class AnsimController {
	@Inject
	private ElecDataService Elecdataservice;
	
	@RequestMapping(value = "ansim", method = RequestMethod.GET)
	public void ansim() {
	}

	@RequestMapping(value = "ansim2", method = RequestMethod.GET)
	public void ansim2(Model model) throws Exception {
		List<HashMap<String,Object>> list=Elecdataservice.ansimTable();
		
		for(int i=0;i<list.size();i++) {
			System.out.println("날짜:"+list.get(i).get("day")+"평균값:"+list.get(i).get("avg"));
		}
		
		model.addAttribute("list",list);
	}
}