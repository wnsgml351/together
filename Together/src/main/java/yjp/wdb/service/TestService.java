package yjp.wdb.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.http.HttpEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import yjp.wdb.domain.ElecData;
import yjp.wdb.persistence.TogetherDAO;

@Service
public class TestService {

	@Inject
	private TogetherDAO dao;

	BufferedReader in = null;

	// private final static int DELAY = 2500;

	// @Scheduled(fixedDelay = 25000)
	public void TestSchedular() {
		// System.out.println("테스트");
		/*
		 * try { URL obj = new URL("http://net.yjc.ac.kr:100/isocketsapi?cmd=getSensorPortData&devid=361A24C0B62ABA394510230920B88641&port=1"); HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		 * 
		 * con.setRequestMethod("GET"); in = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
		 * 
		 * String line; while ((line = in.readLine()) != null) { System.out.println(line); }
		 * 
		 * } catch (Exception e) { e.printStackTrace(); } finally { if (in != null) { try { in.close(); } catch (Exception e) { e.printStackTrace(); } } }
		 */
		String url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=getSensorPortData&devid=361A24C0B62ABA394510230920B88641&port=1";
		RestTemplate template = new RestTemplate();
		String json = template.getForObject(url, String.class);

		JSONParser parser = new JSONParser();
		try {
			Object obj = parser.parse(json);
			JSONObject jsonObj = (JSONObject) obj;
			JSONArray jArray = (JSONArray) jsonObj.get("list");

			for (int i = 0; i < jArray.size(); i++) {
				JSONObject jObj = (JSONObject) jArray.get(i);
				if (jObj.get("paramUnit").equals("W")) {
					ElecData e = new ElecData();
					System.out.println(jObj.get("paramValue"));

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

		// Object obj = parser.parse(in)
	}

	private int convertValue(Object o) {

		return (int) Double.parseDouble(o.toString());
	}

}
