package com.drift.service;

import com.drift.dao.UserDAO;
import com.drift.entry.User;

import java.util.ArrayList;
import java.util.List;

public class MaintainUser {

    public List<User> getUsers(String keywords){
        List<User> list = null;
        if (keywords != null && !"".equals(keywords.trim())) {
            UserDAO userDAO= new UserDAO();
            List<User> users = userDAO.getUser(keywords);
            if (users != null && users.size() > 0){
                list = users;
            }
        }
        return list;
    }

    public void deleteUser(String[] cid){
        UserDAO userDAO = new UserDAO();
        List<Integer> cidList = new ArrayList<>();
        for (String id : cid) {
            cidList.add(Integer.valueOf(id));
        }
        userDAO.deleteUser(cidList);
    }
}
