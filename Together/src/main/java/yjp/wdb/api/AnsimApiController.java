package yjp.wdb.api;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import yjp.wdb.domain.ElecData;
import yjp.wdb.service.ElecDataService;

@RestController
public class AnsimApiController {
	@Inject
	private ElecDataService service;

	@RequestMapping(value = "ansim")
	public List<ElecData> ansim() throws Exception {
		System.out.println("접속");
		return service.ansim();
	}
}
