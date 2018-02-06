package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.User;

public interface UserService {

	public User checkLogin(String userTel, String userPassword);

	public void addUser(User user);

	public User checkLogin1(String userTel);

    int getRank(String userTel);

	void updateRank(String userTel, int rank);
}