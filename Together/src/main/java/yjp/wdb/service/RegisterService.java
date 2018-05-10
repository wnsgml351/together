package yjp.wdb.service;

import java.util.List;
import java.util.Map;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Datas;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Register;

public interface RegisterService {
	public void insert(Register register) throws Exception;

	public void insertAdd(Building building) throws Exception;

	public int confirmId(String id) throws Exception;

	public Groups root(Map<String, Object> map) throws Exception;
	
	public void insertGroups(Groups groups) throws Exception;
	
	public int selectGroupsNo(String group_name) throws Exception;

	public int userGroupNo(String id) throws Exception;

	public List<Groups> roomList(int parent_group) throws Exception;

	public int confirmRoomNo(String group_name) throws Exception;

	public List<Groups> consentlist(int parent_group) throws Exception;

	public Groups groupsData(int group_no) throws Exception;

	public List<String> substrData(int plug_no) throws Exception;

	public List<Datas> avgtimeData(int plug_no) throws Exception;
}
