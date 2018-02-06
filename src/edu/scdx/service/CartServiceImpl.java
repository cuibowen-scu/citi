package edu.scdx.service;

import edu.scdx.dao.CartMapper;
import edu.scdx.entity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by cbw on 2017/8/15.
 */
@Service
public class CartServiceImpl implements CartService{
    @Autowired
    private CartMapper cartMapper;

    public CartMapper getCartMapper() {
        return cartMapper;
    }

    public void setCartMapper(CartMapper cartMapper) {
        this.cartMapper = cartMapper;
    }

    @Override
    public void addCart(String userTel, int id) {
        cartMapper.addCart(userTel,id);
    }

    @Override
    public Cart getCartById(String userTel, int id) {
        return cartMapper.getCartById(userTel,id);
    }
}
