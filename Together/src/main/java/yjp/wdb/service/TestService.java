package yjp.wdb.service;

import java.io.BufferedReader;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import yjp.wdb.domain.ElecData;
import yjp.wdb.persistence.TogetherDAO;
import yjp.wdb.persistence.testDAO;

@Service
public class TestService {

	@Inject
	private TogetherDAO dao;

	@Inject
	private testDAO testDAO;

	BufferedReader in = null;

	// private final static int DELAY = 2500;

	@Scheduled(fixedDelay = 25000)
	public void TestSchedular() {

		/*
		 * boolean status = false;
		 * 
		 * String checkStatusUrl = "http://net.yjc.ac.kr:100/isocketsapi?cmd=getProductInfo&devid=361A24C0B62ABA394510230920B88641"; RestTemplate rTemp = new RestTemplate(); String checkStatus = rTemp.getForObject(checkStatusUrl, String.class); JSONParser jParser = new JSONParser(); try { Object o = jParser.parse(checkStatus); JSONObject jObject = (JSONObject) o; System.out.println("상태 : " + jObject.get("result")); if (jObject.get("result").equals("success")) { status = true; } else { status = false; } } catch (Exception ee) { ee.printStackTrace(); }
		 */

		try {
			String url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=getSensorPortData&devid=361A24C0B62ABA394510230920B88641&port=1";
			RestTemplate template = new RestTemplate();
			String json = template.getForObject(url, String.class);

			JSONParser parser = new JSONParser();
			Object obj = parser.parse(json);
			JSONObject jsonObj = (JSONObject) obj;
			JSONArray jArray = (JSONArray) jsonObj.get("list");

			for (int i = 0; i < jArray.size(); i++) {
				JSONObject jObj = (JSONObject) jArray.get(i);
				if (jObj.get("paramUnit").equals("W")) {
					ElecData e = new ElecData();
					System.out.println("벨류 : " + jObj.get("paramValue"));

					try {
						int v = convertValue(jObj.get("paramValue"));
						System.out.println(convertValue(jObj.get("paramValue")));
						e.setTitle("data");
						e.setWatt(v);
					} catch (NumberFormatException ne) {
						System.out.println("야스야스오");
					}
					System.out.println("야스");

					dao.insertData(e);
				}
			}

			System.out.println("====================");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private int convertValue(Object o) {

		return (int) Double.parseDouble(o.toString());
	}

}
