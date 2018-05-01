package yjp.wdb.service;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class TestService {

	private final static int DELAY = 2500;

	@Scheduled(fixedDelay = 1000)
	public void TestSchedular() {
		System.out.println("테스트");
	}
}
