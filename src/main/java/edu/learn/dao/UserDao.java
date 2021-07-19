package edu.learn.dao;

import edu.learn.model.User;

public class UserDao extends AbstractEntityDao<User>{

	public UserDao() {
		super(User.class);
	}
	
}
