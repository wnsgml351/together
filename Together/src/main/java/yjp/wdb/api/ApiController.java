package yjp.wdb.api;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import yjp.wdb.domain.ElecData;
import yjp.wdb.service.TogetherService;

@RestController
public class ApiController {

	@Inject
	private TogetherService service;

	@RequestMapping(value = "getAllData", method = RequestMethod.GET)
	public List<ElecData> getAllData() throws Exception {
		List<ElecData> list = service.getAllData();
		return list;
	}
}
