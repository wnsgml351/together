package yjp.wdb.api;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import yjp.wdb.domain.Device;
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
		Double d = service.getThisMonthSumData();

		return d;
	}

	@RequestMapping(value = "getThisDaySumData", method = RequestMethod.GET)
	public Double getThisDaySumData() throws Exception {
		return service.getThisDaySumData();
	}

	@RequestMapping(value = "getThisMonthStack", method = RequestMethod.GET)
	public int getThisMonthStack() throws Exception {
		return service.getThisMonthStack();
	}

	@RequestMapping(value = "getStatus", method = RequestMethod.GET)
	public Device getStatus() {
		Device d = new Device();

		String url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=getControlPortStatus&devid=361A24C0B62ABA394510230920B88641&port=1";
		RestTemplate template = new RestTemplate();
		String json = template.getForObject(url, String.class);
		// result == success

		try {
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(json);
			JSONObject jsonObj = (JSONObject) obj;
			d.setResult((String) jsonObj.get("result"));
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (d.getResult().equals("on")) {
			System.out.println("켜져이씀");
		} else {
			System.out.println("꺼져이씀");
		}

		return d;
	}

	@RequestMapping(value = "on", method = RequestMethod.GET)
	public Device on(Device d) {
		String url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=setControlPortStatus&devid=" + d.getDeviceId() + "&port=1&on=1";
		RestTemplate template = new RestTemplate();
		String json = template.getForObject(url, String.class);
		// result == success

		try {
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(json);
			JSONObject jsonObj = (JSONObject) obj;
			d.setResult((String) jsonObj.get("result"));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return d;
	}

	@RequestMapping(value = "off", method = RequestMethod.GET)
	public Device off(Device d) {
		String url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=setControlPortStatus&devid=" + d.getDeviceId() + "&port=1&on=0";
		RestTemplate template = new RestTemplate();
		String json = template.getForObject(url, String.class);

		try {
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(json);
			JSONObject jsonObj = (JSONObject) obj;
			d.setResult((String) jsonObj.get("result"));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return d;
	}

}
