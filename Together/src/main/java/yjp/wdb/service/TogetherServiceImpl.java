package yjp.wdb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjp.wdb.domain.ElecData;
import yjp.wdb.persistence.TogetherDAO;

@Service
public class TogetherServiceImpl implements TogetherService {

	@Inject
	private TogetherDAO dao;

	@Override
	public List<ElecData> getAllData() throws Exception {
		return dao.getAllData();
	}

}
