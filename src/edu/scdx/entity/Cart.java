package edu.scdx.entity;

/**
 * Created by cbw on 2017/8/15.
 */
public class Cart {
    private String tel;
    private int id;

    public Cart(String tel, int id) {
        this.tel = tel;
        this.id = id;
    }

    public Cart() {
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
