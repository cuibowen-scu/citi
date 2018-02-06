package edu.scdx.controller;

import edu.scdx.entity.Cart;
import edu.scdx.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by cbw on 2017/8/15.
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;

    public CartService getCartService() {
        return cartService;
    }

    public void setCartService(CartService cartService) {
        this.cartService = cartService;
    }

    @RequestMapping("/addCart.do")
    public String addCart(HttpSession session,int id){

        String userTel= (String) session.getAttribute("userTel");

        if (userTel==null){
            return "pleaseLogin";
        }
        Cart cart=cartService.getCartById(userTel,id);
        if (cart!=null){
            return "cannotTimeAdd";
        }
        else {
            cartService.addCart(userTel,id);
            return "addCartOk";
        }
    }
}
