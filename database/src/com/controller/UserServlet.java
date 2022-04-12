package com.controller;

import com.entity.vo.MessageModel;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/login")
public class UserServlet extends HttpServlet {

    //实例化UserServiec对象
    private UserService userService = new UserService();

    /**
     * 用户登录
     * 1.接收客户端请求
     * 2.调用service层方法
     * 3.判断消息模型的状态码
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String upwd = request.getParameter("upwd");

        MessageModel messageModel = userService.userlogin(uname, upwd);
        if (messageModel.getCode() == 1) {
            //将消息模型中的用户信息设置到session作用域中，重定向跳转到index.jsp
            request.getSession().setAttribute("user", messageModel.getObject());
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("messageModel", messageModel);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}

