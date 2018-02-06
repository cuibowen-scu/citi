package edu.scdx.entity;

/**
 * Created by cbw on 2017/8/16.
 */
public class Buy {
    private String tel;
    private int id;
    private double money;

    public Buy() {
    }

    public Buy(String tel, int id, double money) {
        this.tel = tel;
        this.id = id;
        this.money = money;
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

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }
}
