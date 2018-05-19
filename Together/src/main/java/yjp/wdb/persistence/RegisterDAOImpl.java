package yjp.wdb.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Datas;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Register;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Inject
	private SqlSession session;
	private static final String NAMESPACE = "yjp.wdb.together.RegisterMapper";

	@Override
	public void insert(Register register) throws Exception {
		session.insert(NAMESPACE + ".insert", register);
	}

	@Override
	public int confirmId(String id) throws Exception {

		int status = -1;

		if (session.selectOne(NAMESPACE + ".confirmId", id) != null) {
			status = 0;
		} else {
			status = 1;
		}

		return status;
	}

	@Override
	public void insertAdd(Building building) throws Exception {
		session.insert(NAMESPACE + ".insertAdd", building);
	}

	@Override
	public Groups root(Map<String, Object> map) throws Exception {
		return session.selectOne(NAMESPACE + ".rootInfo", map);
	}

	@Override
	public void insertGroups(Groups groups) throws Exception {
		session.insert(NAMESPACE + ".insertGroups", groups);
	}

	@Override
	public int selectGroupsNo(String group_name) throws Exception {
		int result = session.selectOne(NAMESPACE + ".selectGroupsNo", group_name);
		return result;
	}

	@Override
	public int userGroupNo(String id) throws Exception {
		int result = session.selectOne(NAMESPACE + ".userGroupNo", id);
		return result;
	}

	@Override
	public List<Groups> roomList(int parent_group) throws Exception {
		return session.selectList(NAMESPACE + ".userRoot", parent_group);
	}

	@Override
	public int confirmRoomNo(String group_name) throws Exception {
		return session.selectOne(NAMESPACE + ".confirmRoom", group_name);
	}

	@Override
	public List<Groups> consentlist(int parent_group) throws Exception {
		return session.selectList(NAMESPACE + ".consentList", parent_group);
	}

	@Override
	public Groups groupsData(int group_no) throws Exception {
		return session.selectOne(NAMESPACE + ".groupsData", group_no);
	}

	@Override
	public List<String> substrData(int plug_no) throws Exception {
		return session.selectList(NAMESPACE + ".SubstrData", plug_no);
	}

	@Override

	public List<Datas> avgtimeData(int plug_no) throws Exception {
		return session.selectList(NAMESPACE + ".AvgTimeData", plug_no);
	}

	/*
	 * @Override public Groups root(String id,int selectType) throws Exception {
	 * 
	 * 
	 * return session.selectOne(NAMESPACE+".rootInfo",id); }
	 */

}
