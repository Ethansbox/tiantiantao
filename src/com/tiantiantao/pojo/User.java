package com.tiantiantao.pojo;

public class User {

    private String userId;                  //id

    private String username;            //用户名

    private String password;            //密码

    private int isFreezing;             //是否冻结  0表示正常  1表示冻结

    private int sex;                    //性别  0表示男    1表示女

    private String address;             //地址

    private String tel;                 //电话

    private String realname;            //真实姓名

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsFreezing() {
        return isFreezing;
    }

    public void setIsFreezing(int isFreezing) {
        this.isFreezing = isFreezing;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }
}
