package yjp.wdb.api;

import java.util.Calendar;
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

	@RequestMapping(value = "getRecent12H", method = RequestMethod.GET)
	public List<ElecData> getRecent12H() throws Exception {
		List<ElecData> list = service.getRecent12H();
		return list;
	}

	@RequestMapping(value = "getThisMonthSumData", method = RequestMethod.GET)
	public Double getThisMonthSumData() throws Exception {
		Calendar c = Calendar.getInstance();

		yjp.wdb.domain.Date date = new yjp.wdb.domain.Date();

		String start = Integer.toString(c.get(Calendar.YEAR)) + "-" + Integer.toString(c.get(Calendar.MONTH) + 1) + "-1";
		String end = Integer.toString(c.get(Calendar.YEAR)) + "-" + Integer.toString(c.get(Calendar.MONTH) + 1) + "-31";

		date.setStartDate(start);
		date.setEndDate(end);

		Double d = service.getThisMonthSumData(date);

		System.out.println(start + " - " + end + " - " + d);

		return d;
	}

}
