package yjp.wdb.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Datas;
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

	public Groups root(Map<String, Object> map) throws Exception{

		// TODO Auto-generated method stub

		return dao.root(map);

	}

 

	@Override

	public void insertGroups(Groups groups) throws Exception {

		// TODO Auto-generated method stub

		dao.insertGroups(groups);

	}

 

	@Override

	public int selectGroupsNo(String group_name) throws Exception {

		// TODO Auto-generated method stub

		return dao.selectGroupsNo(group_name);

	}

 

 

	@Override

	public int userGroupNo(String id) throws Exception {

		// TODO Auto-generated method stub

		return dao.userGroupNo(id);

	}

 

	@Override

	public List<Groups> roomList(int parent_group) throws Exception {

		// TODO Auto-generated method stub

		return dao.roomList(parent_group);

	}

 

	@Override

	public int confirmRoomNo(String group_name) throws Exception {

		// TODO Auto-generated method stub

		return dao.confirmRoomNo(group_name);

	}

 

	@Override

	public List<Groups> consentlist(int parent_group) throws Exception {

		// TODO Auto-generated method stub

		return dao.consentlist(parent_group);

	}

 

	@Override

	public Groups groupsData(int group_no) throws Exception {

		// TODO Auto-generated method stub

		return dao.groupsData(group_no);

	}

 

	@Override

	public List<String> substrData(int plug_no) throws Exception {

		// TODO Auto-generated method stub

		return dao.substrData(plug_no);

	}

 

	@Override

	public List<Datas> avgtimeData(int plug_no) throws Exception {

		// TODO Auto-generated method stub

		return dao.avgtimeData(plug_no);

	}
}
