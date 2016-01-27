package com.drift.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class DBHelper {

    private static SqlSession sqlSession;
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            //通过配置文件获取链接信息
            Reader reader = Resources.getResourceAsReader("com/drift/config/Configuration.xml");
            //构建sqlSessionFactory
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static SqlSession getSqlSession(){
        return sqlSessionFactory.openSession();
    }

    public static SqlSessionFactory getSqlSessionFactory(){
        return sqlSessionFactory;
    }

    public void closeSqssion(SqlSession session){
        session.close();
    }

}
