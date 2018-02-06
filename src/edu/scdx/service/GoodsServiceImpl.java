package edu.scdx.service;

import edu.scdx.dao.*;
import edu.scdx.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Autowired
    private GoodsMapper goodsMapper;

	public GoodsMapper getGoodsMapper() {
		return goodsMapper;
	}

	public void setGoodsMapper(GoodsMapper goodsMapper) {
		this.goodsMapper = goodsMapper;
	}

	@Override
	public List<Goods> getGoodsByStyle(Integer style,int start,int count) {
		return goodsMapper.getGoodsByStyle(style,start,count);
	}

	@Override
	public List<Goods> getGoodsByDead(Integer dead,int start,int count) {
		return goodsMapper.getGoodsByDead(dead,start,count);
	}

	@Override
	public List<Goods> getCartGoods(String userTel) {
		return goodsMapper.getCartGoods(userTel);
	}

	@Override
	public void updateGood(int id, double money) {
		goodsMapper.updateGood(id,money);
	}

	@Override
	public Goods getGoodsById1(int id) {
		return goodsMapper.getGoodsById1(id);
	}

	@Override
	public List<Goods> getAllBuy(String userTel,int toBuy,int toEarn) {
		return goodsMapper.getAllBuy(userTel,toBuy,toEarn);
	}

	@Override
	public List<Goods> getToBuy(int toBuy, int toEarn) {
		return goodsMapper.getToBuy(toBuy,toEarn);
	}

	@Override
	public void updateBuy(Integer id) {
		goodsMapper.updateBuy(id);
	}

	@Override
	public void updateEarn(Integer id) {
		goodsMapper.updateEarn(id);
	}

	@Override
	public List<Goods> getMultiSearch(Integer searchStyle, double fromPrice, double toPrice, double fromRate, double toRate) {
		return goodsMapper.getMultiSearch(searchStyle,fromPrice,toPrice,fromRate,toRate);
	}

	@Override
	public List<Goods> getGoodsByRisk(int rank) {
		return goodsMapper.getGoodsByRisk(rank);
	}


	@Override
	public List<Goods> getGoodsById(Integer id) {
		return goodsMapper.getGoodsById(id);
	}

	@Override
	public List<Goods> getGoodsByProduct(String product,int start,int count) {
		return goodsMapper.getGoodsByProduct(product,start,count);
	}

	@Override
	public List<Goods> getContrastResult(Integer id1, Integer id2) {
		return goodsMapper.getContrastResult(id1,id2);
	}

	@Override
	public Goods getIfId2(Integer id2) {
		return goodsMapper.getIfId2(id2);
	}

	@Override
	public Goods getIfId1(Integer id1) {
		return goodsMapper.getIfId1(id1);
	}

	@Override
	public int getTotal(String product) {
		return goodsMapper.getTotal(product);
	}

	@Override
	public int getTotal1(Integer style) {
		return goodsMapper.getTotal1(style);
	}

	@Override
	public int getTotal2(Integer dead) {
		return goodsMapper.getTotal2(dead);
	}
}
