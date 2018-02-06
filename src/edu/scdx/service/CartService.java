package edu.scdx.service;

import edu.scdx.entity.Cart;

/**
 * Created by cbw on 2017/8/15.
 */
public interface CartService {
    void addCart(String userTel, int id);

    Cart getCartById(String userTel, int id);
}
