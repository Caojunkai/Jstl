package com.drift.dao;

import com.drift.entry.User;
import com.drift.util.DBHelper;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public List<User> getUser(String name){
       SqlSession session = null;
       List<User> list = new ArrayList<>();
       try {
           session = DBHelper.getSqlSession();
           User user = new User();
           user.setName(name);
           list =  session.selectList("User.getUser",user);
       } catch (Exception e) {
           e.printStackTrace();
       } finally {
           if (session != null) {
               session.close();
           }
       }
       return list;
    }

    public void deleteUser(List<Integer> cid){
        SqlSession session = null;
        try {
            session = DBHelper.getSqlSession();
            session.delete("User.deleteUser",cid);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null){
                session.close();
            }
        }
    }
}
