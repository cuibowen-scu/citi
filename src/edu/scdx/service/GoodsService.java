package edu.scdx.service;

import edu.scdx.entity.*;

import java.util.List;

public interface GoodsService {

	List<Goods> getGoodsByStyle(Integer style, int start, int count);

	List<Goods> getGoodsById(Integer id);

	List<Goods> getGoodsByProduct(String product, int start, int count);

	List<Goods> getContrastResult(Integer id1, Integer id2);

	Goods getIfId2(Integer id2);

	Goods getIfId1(Integer id1);

	int getTotal(String product);

	int getTotal1(Integer style);

	int getTotal2(Integer dead);

	List<Goods> getGoodsByDead(Integer dead, int start, int count);

    List<Goods> getCartGoods(String userTel);

    void updateGood(int id, double money);

	Goods getGoodsById1(int id);

	List<Goods> getAllBuy(String userTel, int toBuy, int toEarn);

	List<Goods> getToBuy(int toBuy, int toEarn);

	void updateBuy(Integer id);

	void updateEarn(Integer id);

	List<Goods> getMultiSearch(Integer searchStyle, double fromPrice, double toPrice, double fromRate, double toRate);

    List<Goods> getGoodsByRisk(int rank);
}
