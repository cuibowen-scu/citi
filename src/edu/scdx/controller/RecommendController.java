package edu.scdx.controller;

import edu.scdx.entity.Goods;
import edu.scdx.service.GoodsService;
import edu.scdx.service.RecommendService;
import edu.scdx.service.UserService;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;



import java.io.File;
import java.util.List;
/**
 * Created by cbw on 2017/11/11.
 */
@Controller
@RequestMapping("/recommend")
public class RecommendController {
    @Autowired
    private RecommendService recommendService;

    @Autowired
    private GoodsService goodsService;

    public GoodsService getGoodsService() {
        return goodsService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    public RecommendService getRecommendService() {
        return recommendService;
    }

    public void setRecommendService(RecommendService recommendService) {
        this.recommendService = recommendService;
    }

    @RequestMapping("/twoWayRecommend.do")
    public String twoWayRecommend(Model model, HttpSession session){
        String userTel= (String) session.getAttribute("userTel");
        if (userTel==null){
            return "pleaseLogin";
        }
        int rank = recommendService.getRankByUserTel(userTel);
        List<Goods> goods = goodsService.getGoodsByRisk(rank);
        model.addAttribute("goods",goods);
        return "recommend";
    }


}
