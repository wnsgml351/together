package yjp.wdb.persistence;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.Building;
import yjp.wdb.domain.Groups;
import yjp.wdb.domain.Register;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Inject
	private SqlSession session;
	private static final String NAMESPACE = "yjc.wdb.mapper.RegisterMapper";

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

	/*
	 * @Override public Groups root(String id,int selectType) throws Exception {
	 * 
	 * 
	 * return session.selectOne(NAMESPACE+".rootInfo",id); }
	 */

}
