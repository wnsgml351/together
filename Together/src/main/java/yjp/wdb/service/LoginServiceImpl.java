package yjp.wdb.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjp.wdb.persistence.LoginDAO;
import yjp.wdb.domain.Login;

@Service
public class LoginServiceImpl implements LoginService {

	@Inject
	private LoginDAO dao;

	@Override
	public Login login(Login login) throws Exception {
		return dao.login(login);
	}

}
