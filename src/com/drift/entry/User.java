package com.drift.entry;

import java.util.Date;

public class User {

    private int id;
    private String name;
    private String password;
    private int sex;
    private String email;
    private Date ctime;
    private String face;

    public User() {
    }

    public User(int id, String name, String password, int sex, String email, Date ctime, String face) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.sex = sex;
        this.email = email;
        this.ctime = ctime;
        this.face = face;
    }

    public int getId() {
        return id;
    }

    public void setI(int i) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", sex=" + sex +
                ", email='" + email + '\'' +
                ", ctime=" + ctime +
                ", face='" + face + '\'' +
                '}';
    }
}
