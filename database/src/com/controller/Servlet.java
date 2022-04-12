package com.controller;

import com.entity.vo.Message;
import com.service.DBService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/HR_register")
public class Servlet extends HttpServlet {

    //实例化DBServiece对象
    private DBService dbService= new DBService();

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
        String Organization1 = request.getParameter("Organization1");
        String Organization2 = request.getParameter("Organization2");
        String Organization3 = request.getParameter("Organization3");
        String PositionKind = request.getParameter("PositionKind");
        String PositionName = request.getParameter("PositionName");
        String SalaryStandard = request.getParameter("SalaryStandard");
        String EmployeeName = request.getParameter("EmployeeName");
        String Sex = request.getParameter("Sex");
        String Email = request.getParameter("Email");
        String Phone = request.getParameter("Phone");
        String Address = request.getParameter("Address");
        String Country = request.getParameter("Country");
        String Nation = request.getParameter("Nation");
        String IDcard = request.getParameter("IDcard");
        String Socialcard = request.getParameter("Socialcard");
        String Education = request.getParameter("Education");
        String Bank = request.getParameter("Bank");
        String BankID = request.getParameter("BankID");
        String RegisterUser = request.getParameter("RegisterUser");
        String RegisterTime = request.getParameter("RegisterTime");
        String personaltext = request.getParameter("personaltext");
        String familytext = request.getParameter("familytext");
        String note = request.getParameter("note");
        Message message = dbService.text(Organization1,Organization2,Organization3,PositionKind,PositionName
                ,SalaryStandard,EmployeeName,Sex,Email,Phone,Address,Country,Nation,IDcard,Socialcard,Education,Bank,BankID
                ,RegisterUser,RegisterTime,personaltext,familytext,note);

            //将消息模型中的用户信息设置到session作用域中，重定向跳转到index.jsp
            request.getSession().setAttribute("e", message.getObject());
            response.sendRedirect("index.jsp");
    }
}


