package edu.scdx.controller;

import edu.scdx.entity.Buy;
import edu.scdx.entity.Goods;
import edu.scdx.service.BuyService;
import edu.scdx.service.GoodsService;
import edu.scdx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by cbw on 2017/8/16.
 */
@Controller
@RequestMapping("/buy")
public class BuyController {
    @Autowired
    private UserService userService;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    private BuyService buyService;

    public GoodsService getGoodsService() {
        return goodsService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @Autowired

    private GoodsService goodsService;

    public BuyService getBuyService() {
        return buyService;
    }

    public void setBuyService(BuyService buyService) {
        this.buyService = buyService;
    }

    @RequestMapping("/addBuy.do")
    public String addBuy(HttpSession session, double money, int id, Model model){
        String userTel= (String) session.getAttribute("userTel");
        if(userTel==null){
            return "pleaseLogin";
        }
        Goods good= goodsService.getGoodsById1(id);
//        if (money+good.getHave()>good.getPrice()){
//            model.addAttribute("most",good.getPrice()-good.getHave());
//            return "cannotBuy";
//        }
        Buy buy=buyService.getBuy(userTel,id);
        if (buy==null){
            buyService.addBuy(userTel,id,money);
        }else {
            buyService.updateBuy(userTel,id,money);
        }
        goodsService.updateGood(id,money);
        int rank=userService.getRank(userTel);
        List<Goods> goods=goodsService.getGoodsByRisk(rank);
        model.addAttribute("goods",goods);
        return "buySucceed";
    }

}
