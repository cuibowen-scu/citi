package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.scdx.dao.UserMapper;
import edu.scdx.entity.User;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public User checkLogin(String userTel, String userPassword) {

		User user=userMapper.getUserByTel(userTel,userPassword);
		
		if(user!=null){
			return user;
		}
		
		return null;
	}

	@Override
	public void addUser(User user) {
		
		userMapper.insertUser(user);
		
	}

	@Override
	public User checkLogin1(String userTel) {
User user=userMapper.getUserByTel1(userTel);
		
		if(user!=null){
			return user;
		}
		
		return null;
	}

	@Override
	public int getRank(String userTel) {
		return userMapper.getRank(userTel);
	}

	@Override
	public void updateRank(String userTel, int rank) {
		userMapper.updateRank(userTel,rank);
	}


}
