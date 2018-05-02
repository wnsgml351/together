package yjp.wdb.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Register;
import yjp.wdb.persistence.RegisterDAO;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Inject
	private RegisterDAO dao;

	@Override
	public void insert(Register register) throws Exception {
		dao.insert(register);

	}

	@Override
	public int confirmId(String id) throws Exception {
		return dao.confirmId(id);
	}

	@Override
	public void insertAdd(Building building) throws Exception {
		dao.insertAdd(building);
	}

	@Override
	public Groups root(Map<String, Object> map) throws Exception {
		return dao.root(map);
	}
}
