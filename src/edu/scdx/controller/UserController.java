package edu.scdx.controller;

import edu.scdx.entity.Goods;
import edu.scdx.entity.User;
import edu.scdx.service.GoodsService;
import edu.scdx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by cbw on 2017/8/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    public GoodsService getGoodsService() {
        return goodsService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @Autowired

    private GoodsService goodsService;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/logInPage.do")
    public String logInPage(HttpSession session){
        String teltel= (String) session.getAttribute("userTel");
        if(teltel!=null){
            return "alreadyLogIn";
        }

        return "logInPage";
    }

    @RequestMapping("/logIn.do")
    public String login(Model model, HttpSession session, String userTel, String userPassword){

        if(userTel.equals("admin") && userPassword.equals("admin")){
            int toBuy=0;
            int toEarn=0;
            List<Goods> goods=goodsService.getToBuy(toBuy,toEarn);
            model.addAttribute("goods",goods);
            return "admin";
        }

        if(userTel.trim().equals("") || userPassword.trim().equals("")){
            return "telNull";
        }

        User user=userService.checkLogin(userTel,userPassword);

        if(user!=null){
            String name=user.getName();
            model.addAttribute("name",name);
            session.setAttribute("userTel", userTel);
            return "welcome";
        }
            return "notHaveUser";
    }

    @RequestMapping("/regPage.do")
    public String regPage(){
        return "regPage";
    }

    @RequestMapping("/reg.do")
    public String reg(Model model,HttpSession session,String userTel,String userName,String userPassword,String userPassword1){


        if(userTel.trim().equals("") || userPassword.trim().equals("")){
            return "telNull";
        }

        if(userTel.trim().length()!=11){
            return "telBit";
        }

        if(userPassword.trim().length()<4 || userPassword.trim().length()>8 ){
            return "passBit";
        }

        if(!userPassword.equals(userPassword1)){
            return "passNotSame";
        }


        User user1=userService.checkLogin1(userTel);

        if(user1!=null){

            return "alreadyhave";
        }

        else{
            int rank=1;
            User user2=new User(userTel,userPassword,userName,rank);
            session.setAttribute("user2",user2);
            return "testPaper";
        }

    }

    @RequestMapping("/addRank.do")
    public String addRank(Model model,HttpSession session,Integer score1,Integer score2,Integer score3,Integer score4,Integer score5,
                          Integer score6,Integer score7,Integer score8,Integer score9,Integer score10){

        if(score1==null||score2==null||score3==null||score4==null||score5==null||score6==null||
                score7==null||score8==null||score9==null||score10==null){
            return "haveToSelectAll";
        }
        User user2= (User) session.getAttribute("user2");
        int sum=score1+score2+score3+score4+score5+score6+score7+score8+score9+score10;
        int rank;
        if(sum>=23){
            rank=1;
        }else if(sum>=11 && sum<=22){
            rank=2;
        }else if (sum>=-2 && sum<=10){
            rank=3;
        }else if (sum>=-5 && sum<=-3){
            rank=4;
        }else {
            rank=5;
        }

        user2.setRank(rank);
        userService.addUser(user2);
        List<Goods> goods=goodsService.getGoodsByRisk(rank);
        model.addAttribute("goods",goods);
        return "resSucceed";
    }

    @RequestMapping("/updateRankPage.do")
    public String updateRankPage(HttpSession session){
        if(session.getAttribute("userTel")!=null){
            return "updateRankPage";
        }
        else {
            return "pleaseLogin";
        }
    }

    @RequestMapping("/updateRank.do")
    public String updateRank(HttpSession session,Integer score1,Integer score2,Integer score3,Integer score4,Integer score5,
                              Integer score6,Integer score7,Integer score8,Integer score9,Integer score10){
        if(score1==null||score2==null||score3==null||score4==null||score5==null||score6==null||
                score7==null||score8==null||score9==null||score10==null){
            return "haveToSelectAll";
        }
        int sum=score1+score2+score3+score4+score5+score6+score7+score8+score9+score10;
        int rank;
        if(sum>=23){
            rank=1;
        }else if(sum>=11 && sum<=22){
            rank=2;
        }else if (sum>=-2 && sum<=10){
            rank=3;
        }else if (sum>=-5 && sum<=-3){
            rank=4;
        }else {
            rank=5;
        }
        String userTel= (String) session.getAttribute("userTel");
        userService.updateRank(userTel,rank);
        return "updateSucceed";
    }
}
