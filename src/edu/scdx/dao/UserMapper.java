package edu.scdx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import edu.scdx.entity.User;

@Repository
public interface UserMapper {
	
	@Select("select * from user where tel = #{tel} and password=#{password}")
	public User getUserByTel(@Param("tel") String userTel, @Param("password") String userPassword);

	@Select("insert into user(tel,password,name,rank) values(#{tel},#{password},#{name},#{rank})")
	public void insertUser(User user);

	@Select("select * from user where tel = #{tel}")
	public User getUserByTel1(@Param("tel") String userTel);


	@Select("select rank from user where tel = #{tel}")
    int getRank(@Param("tel") String userTel);

	@Update("update `user` set rank=#{rank} where tel=#{tel}")
	void updateRank(@Param("tel") String userTel, @Param("rank") int rank);
}
