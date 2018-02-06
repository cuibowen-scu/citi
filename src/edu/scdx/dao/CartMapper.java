package edu.scdx.dao;

import edu.scdx.entity.Cart;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * Created by cbw on 2017/8/15.
 */
@Repository
public interface CartMapper {
    @Insert("insert into cart(tel,id) values (#{tel},#{id})")
    void addCart(@Param("tel") String userTel, @Param("id") int id);

    @Select("select * from cart where tel=#{tel} and id=#{id}")
    Cart getCartById(@Param("tel") String userTel, @Param("id") int id);
}
