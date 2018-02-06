package edu.scdx.entity;

/**
 * Created by cbw on 2017/8/14.
 */
public class Goods{
    private int id;
    private String product;
    private double price;
    private double rate;
    private String from;
    private String date;
    private int style;
    private int risk;
    private double have;
    private int tobuy;
    private int toearn;

    public Goods() {
    }

    public Goods(int id, String product, double price, double rate, String from, String date, int style, int risk, double have, int tobuy, int toearn) {
        this.id = id;
        this.product = product;
        this.price = price;
        this.rate = rate;
        this.from = from;
        this.date = date;
        this.style = style;
        this.risk = risk;
        this.have = have;
        this.tobuy = tobuy;
        this.toearn = toearn;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStyle() {
        return style;
    }

    public void setStyle(int style) {
        this.style = style;
    }

    public int getRisk() {
        return risk;
    }

    public void setRisk(int risk) {
        this.risk = risk;
    }

    public double getHave() {
        return have;
    }

    public void setHave(double have) {
        this.have = have;
    }

    public int getTobuy() {
        return tobuy;
    }

    public void setTobuy(int tobuy) {
        this.tobuy = tobuy;
    }

    public int getToearn() {
        return toearn;
    }

    public void setToearn(int toearn) {
        this.toearn = toearn;
    }
}
