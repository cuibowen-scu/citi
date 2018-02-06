package edu.scdx.service;

import edu.scdx.dao.BuyMapper;
import edu.scdx.entity.Buy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by cbw on 2017/8/16.
 */
@Service
public class BuyServiceImpl implements BuyService{
    @Autowired
    private BuyMapper buyMapper;

    public BuyMapper getBuyMapper() {
        return buyMapper;
    }

    public void setBuyMapper(BuyMapper buyMapper) {
        this.buyMapper = buyMapper;
    }

    @Override
    public void addBuy(String userTel, int id, double money) {
        buyMapper.addBuy(userTel,id,money);
    }

    @Override
    public Buy getBuy(String userTel, int id) {
        return buyMapper.getBuy(userTel,id);
    }

    @Override
    public void updateBuy(String userTel, int id, double money) {
        buyMapper.updateBuy(userTel,id,money);
    }
}
