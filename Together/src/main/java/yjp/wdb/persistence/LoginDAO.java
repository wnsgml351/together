package yjp.wdb.persistence;

import yjp.wdb.domain.Login;

public interface LoginDAO {
	public Login login(Login login)throws Exception;
}
