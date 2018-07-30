package com.kyka.bussiness.entity;

public class Coupon {
    private float discount;

    private int couponNum;

    private int couponId;

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public int getCouponNum() {
        return couponNum;
    }

    public void setCouponNum(int couponNum) {
        this.couponNum = couponNum;
    }

    public int getCouponId() {
        return couponId;
    }

    public void setCouponId(int couponId) {
        this.couponId = couponId;
    }
}
