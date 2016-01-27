package com.drift.servlet;

import com.drift.entry.User;
import com.drift.service.MaintainUser;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;

public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String key = request.getParameter("keywords");
        MaintainUser maintainUser = new MaintainUser();
        List<User> list = maintainUser.getUsers(key);
        request.setAttribute("users",list);
        request.getRequestDispatcher("/WEB-INF/jsp/front/search.jsp").forward(request,response);
    }
}
