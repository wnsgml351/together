package yjp.wdb.service;

import yjp.wdb.persistence.LoginDAO;
import yjp.wdb.domain.Login;

public interface LoginService {

	public Login login(Login login)throws Exception;
	
}
