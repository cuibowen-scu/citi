package edu.scdx.service;

import edu.scdx.entity.Buy;

/**
 * Created by cbw on 2017/8/16.
 */
public interface BuyService {
    void addBuy(String userTel, int id, double money);

    Buy getBuy(String userTel, int id);

    void updateBuy(String userTel, int id, double money);
}
