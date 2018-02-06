package edu.scdx.dao;

import edu.scdx.entity.Buy;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * Created by cbw on 2017/8/16.
 */
@Repository
public interface BuyMapper {
    @Insert("insert into buy(tel,id,money) values(#{tel},#{id},#{money})")
    void addBuy(@Param("tel") String userTel, @Param("id") int id, @Param("money") double money);

    @Select("select * from buy where tel=#{tel} and id=#{id}")
    Buy getBuy(@Param("tel") String userTel, @Param("id") int id);

    @Update("update `buy` set money=money+#{money} where tel=#{tel} and id=#{id} ")
    void updateBuy(@Param("tel") String userTel, @Param("id") int id, @Param("money") double money);
}
