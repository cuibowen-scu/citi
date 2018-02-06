package edu.scdx.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by cbw on 2017/11/11.
 */
@Repository
public interface RecommendMapper {
    @Select("select rank from user where tel=#{tel}")
    int getRankByUserTel(@Param("tel") String userTel);
}
