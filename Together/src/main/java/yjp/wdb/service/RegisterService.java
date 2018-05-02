package yjp.wdb.service;

import java.util.Map;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Register;

public interface RegisterService {
	public void insert(Register register) throws Exception;

	public void insertAdd(Building building) throws Exception;

	public int confirmId(String id) throws Exception;

	public Groups root(Map<String, Object> map) throws Exception;
}
