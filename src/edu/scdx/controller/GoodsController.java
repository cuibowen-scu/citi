package edu.scdx.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import edu.scdx.entity.Cart;
import edu.scdx.entity.Goods;
import edu.scdx.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by cbw on 2017/8/14.
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    public GoodsService getGoodsService() {
        return goodsService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping("/searchGoods.do")
    public String getGoods(HttpSession session,Model model,String product,Integer newStart){
        if(product.equals("")){
            return "notInput";
        }
        int start=0;
        int count=10;
        if(newStart==null){
            newStart=0;
        }
        start=newStart;

        List<Goods> goods=goodsService.getGoodsByProduct(product,start,count);

        int last=goodsService.getTotal(product);
        int next=start+count;
        int pre=start-count;
        pre=pre<0?0:pre;
        next=next>last-1?next-count:next;
        if(last%10!=0){
            last-=last%10;
        }else {
            last-=10;
        }

        model.addAttribute("product",product);
        model.addAttribute("next",next);
        model.addAttribute("last",last);
        model.addAttribute("pre",pre);
        model.addAttribute("styles",goods);
        return "seeSearch";
    }

    @RequestMapping("/getGoodsByStyle.do")
    public String getGoodsByStyle(Model model, HttpSession session,Integer style,Integer newStart){
        int start=0;
        int count=10;
        if(newStart==null){
            newStart=0;
        }
        start=newStart;

        List<Goods> styles=goodsService.getGoodsByStyle(style,start,count);
        model.addAttribute("styles",styles);
        model.addAttribute("style",style);

        int last=goodsService.getTotal1(style);
        int next=start+count;
        int pre=start-count;
        pre=pre<0?0:pre;
        next=next>last-1?next-count:next;
        if(last%10!=0){
            last-=last%10;
        }else {
            last-=10;
        }


        model.addAttribute("next",next);
        model.addAttribute("last",last);
        model.addAttribute("pre",pre);
        return "showGoodsByStyle";
    }

//    @RequestMapping("/getGoodsByDead.do")
//    public String getGoodsByDead(Model model, HttpSession session,Integer dead,Integer newStart){
//        int start=0;
//        int count=10;
//        if(newStart==null){
//            newStart=0;
//        }
//        start=newStart;
//
//        List<Goods> deads=goodsService.getGoodsByDead(dead,start,count);
//        model.addAttribute("deads",deads);
//        model.addAttribute("dead",dead);
//
//        int last=goodsService.getTotal2(dead);
//        int next=start+count;
//        int pre=start-count;
//        pre=pre<0?0:pre;
//        next=next>last-1?next-count:next;
//        if(last%10!=0){
//            last-=last%10;
//        }else {
//            last-=10;
//        }
//
//        model.addAttribute("next",next);
//        model.addAttribute("last",last);
//        model.addAttribute("pre",pre);
//
//        return "showGoodsByDead";
//    }

    @RequestMapping("/getGoodsInfo.do")
    public String getGoodsInfo(Model model,HttpSession session,Integer id){
        List<Goods> goods=goodsService.getGoodsById(id);
        model.addAttribute("goods",goods);
        return "showGoodsInfo";
    }


    @RequestMapping("/getContrast.do")
    public String getContrast(){
        return "contrast";
    }

    @RequestMapping("/getContrastResult.do")
    public String getContrastResult(Model model,HttpSession session,Integer id1,Integer id2){
        Goods good1=goodsService.getIfId1(id1);
        Goods good2=goodsService.getIfId2(id2);
        if(good1==null || good2==null){
            return "goodNotExist";
        }
        else{
            model.addAttribute("good1",good1);
            model.addAttribute("good2",good2);

            return "contrastResult";
        }
    }

    @RequestMapping("/getCartGoods.do")
    public String getCartGoods(HttpSession session,Model model){
        String userTel= (String) session.getAttribute("userTel");
        if(userTel==null){
            return "pleaseLogin";
        }
        else {
            List<Goods> goods=goodsService.getCartGoods(userTel);
            model.addAttribute("goods",goods);
            return "cart";
        }
    }

    @RequestMapping("/getAllBuy.do")
    public String getAllBuy(Model model,HttpSession session){
        String userTel= (String) session.getAttribute("userTel");
        if(userTel==null){
            return "pleaseLogin";
        }
        int toBuy=0;
        int toEarn=0;
        List<Goods> goods=goodsService.getAllBuy(userTel,toBuy,toEarn);
        model.addAttribute("goods",goods);
        return "myBuy";
    }

    @RequestMapping("/getCanBuy.do")
    public String getCanBuy(Model model,HttpSession session){
        String userTel= (String) session.getAttribute("userTel");
        int toBuy=1;
        int toEarn=0;
        List<Goods> goods=goodsService.getAllBuy(userTel,toBuy,toEarn);
        model.addAttribute("goods",goods);
        return "myBuy";
    }

    @RequestMapping("/getResult.do")
    public String getResult(Model model,HttpSession session){
        String userTel= (String) session.getAttribute("userTel");
        int toBuy=1;
        int toEarn=1;
        List<Goods> goods=goodsService.getAllBuy(userTel,toBuy,toEarn);
        model.addAttribute("goods",goods);
        return "myBuy";
    }

    @RequestMapping("/updateToBuy.do")
    public String updateToBuy(Model model){
        int toBuy=0;
        int toEarn=0;
        List<Goods> goods=goodsService.getToBuy(toBuy,toEarn);
        model.addAttribute("goods",goods);
        return "admin";
    }


    @RequestMapping("/updateToEarn.do")
    public String updateToEarn(Model model){
        int toBuy=1;
        int toEarn=0;
        List<Goods> goods=goodsService.getToBuy(toBuy,toEarn);
        model.addAttribute("goods",goods);
        return "admin1";
    }

    @RequestMapping("/updateBuy.do")
    public String updateBuy(Integer id){
        goodsService.updateBuy(id);
        return "doSucceed";
    }

    @RequestMapping("/updateEarn.do")
    public String updateEarn(Integer id){
        goodsService.updateEarn(id);
        return "doSucceed";
    }

    @RequestMapping("/getMultiSearch.do")
    public String getMultiSearch(Model model,Integer searchStyle,Integer searchPrice,Integer searchRate){
        double fromPrice;
        double toPrice;
        if(searchPrice==1){
            fromPrice=0;
            toPrice=1000;
        }else if (searchPrice==2){
            fromPrice=1000;
            toPrice=10000;
        }else if (searchPrice==3){
            fromPrice=10000;
            toPrice=100000;
        }else {
            fromPrice=100000;
            toPrice=99999999;
        }

        double fromRate;
        double toRate;
        if(searchRate==1){
            fromRate=0;
            toRate=3;
        }else if (searchRate==2){
            fromRate=3;
            toRate=4;
        }else if (searchRate==3){
            fromRate=4;
            toRate=5;
        }
        else {
            fromRate=5;
            toRate=20;
        }
        List<Goods> goods=goodsService.getMultiSearch(searchStyle,fromPrice,toPrice,fromRate,toRate);
        model.addAttribute("goods",goods);
        return "multiSearch";
    }

}
