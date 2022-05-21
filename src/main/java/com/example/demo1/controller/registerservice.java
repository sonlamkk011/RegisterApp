package com.example.demo1.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class registerservice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/auth/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String birthday = req.getParameter("birthday");
        String phone = req.getParameter("phone");
        String fullName = req.getParameter("fullName");
        String username = req.getParameter("username");
        req.setAttribute("fullName" , fullName);
        req.setAttribute("email" , email);
        req.setAttribute("birthday" , birthday);
        req.setAttribute("phone" , phone);
        req.setAttribute("username" , username);
        req.setAttribute("password" , password  );

        req.getRequestDispatcher("/alert/alert.jsp").forward(req, resp);
    }
}
