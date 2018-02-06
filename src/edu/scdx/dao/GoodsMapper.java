package edu.scdx.dao;
import java.util.List;
import edu.scdx.entity.*;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by cbw on 2017/8/14.
 */
@Repository
public interface GoodsMapper {

    @Select("select * from goods where style=#{style} limit #{start},#{count}")
    List<Goods> getGoodsByStyle(@Param("style") Integer style, @Param("start") int start, @Param("count") int count);

    @Select("select * from goods where dead=#{dead} limit #{start},#{count}")
    List<Goods> getGoodsByDead(@Param("dead") Integer dead, @Param("start") int start, @Param("count") int count);

    @Select("select * from goods where id=#{id}")
    List<Goods> getGoodsById(@Param("id") Integer id);

    @Select("select * from goods where product like concat('%',#{product},'%') limit #{start},#{count}")
    List<Goods> getGoodsByProduct(@Param("product") String product, @Param("start") int start, @Param("count") int count);

    @Select("select * from goods where id=#{id1} or id=#{id2}")
    List<Goods> getContrastResult(@Param("id1") Integer id1, @Param("id2") Integer id2);

    @Select("select * from goods where id=#{id2}")
    Goods getIfId2(@Param("id2") Integer id2);

    @Select("select * from goods where id=#{id1}")
    Goods getIfId1(@Param("id1") Integer id1);

    @Select("select count(*) from goods where product like concat('%',#{product},'%')")
    int getTotal(@Param("product") String product);

    @Select("select count(*) from goods where style=#{style}")
    int getTotal1(@Param("style") Integer style);

    @Select("select count(*) from goods where dead=#{dead}")
    int getTotal2(@Param("dead") Integer dead);

    @Select("select * from goods where id in (select id from cart where tel=#{tel})")
    List<Goods> getCartGoods(@Param("tel") String userTel);

    @Update("update `goods` set have=have+#{have} where id=#{id}")
    void updateGood(@Param("id") int id, @Param("have") double money);

    @Select("select * from goods where id=#{id}")
    Goods getGoodsById1(@Param("id") int id);

    @Select("select * from `goods` where tobuy=#{tobuy} and toearn=#{toearn} and id in (select id from `buy` where tel=#{tel})")
    List<Goods> getAllBuy(@Param("tel") String userTel, @Param("tobuy") int toBuy, @Param("toearn") int toEarn);

    @Select("select * from goods where tobuy=#{tobuy} and toearn=#{toearn} and price<=have")
    List<Goods> getToBuy(@Param("tobuy") int toBuy, @Param("toearn") int toEarn);

    @Update("update `goods` set toearn=1 where id=#{id}")
    void updateEarn(@Param("id") Integer id);

    @Update("update `goods` set tobuy=1 where id=#{id}")
    void updateBuy(@Param("id") Integer id);

    @Select("select * from `goods` where style=#{style} and  #{fromPrice}<=price and price<#{toPrice} and #{fromRate}<=rate and rate<#{toRate}")
    List<Goods> getMultiSearch(@Param("style") Integer searchStyle, @Param("fromPrice") double fromPrice, @Param("toPrice") double toPrice, @Param("fromRate") double fromRate, @Param("toRate") double toRate);

    @Select("select * from goods where risk=#{risk} limit 10")
    List<Goods> getGoodsByRisk(@Param("risk") int rank);
}
