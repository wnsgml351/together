package yjp.wdb.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.Login;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Inject
	private SqlSession session;

	private final static String NAMESPACE = "yjc.wdb.mapper.Login";

	@Override
	public Login login(Login login) throws Exception {
		System.out.println(login.getId());

		Login l = session.selectOne(NAMESPACE + ".select", login);
		System.out.println(l.getId());

		if (l.getId() != null) {
			System.out.println("yessssssssss");
			l.setStatus(1);
		} else {
			System.out.println("noooooooooo");
			l.setStatus(0);
		}

		return l;
	}

}
