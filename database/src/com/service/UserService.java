package com.service;

import com.entity.User;
import com.entity.vo.MessageModel;
import com.mapper.Mapper;
import com.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;




public class UserService {
    public MessageModel userlogin(String uname,String upwd) {
        MessageModel messageModel = new MessageModel();


        //回显数据
        User u = new User();
        u.setUser(uname);
        u.setPwd(upwd);
        messageModel.setObject(u);



        SqlSession session = GetSqlSession.createSqlSession();
        Mapper mapper = session.getMapper(Mapper.class);
        User user = mapper.queryUserByName(uname);


        //判断用户对象是否为空
        if(user == null){
            messageModel.setCode(0);
            messageModel.setMsg("用户不存在");
            return messageModel;
        }

        //比较密码
        if(!upwd.equals(user.getPwd())){
            messageModel.setCode(0);
            messageModel.setMsg("用户密码不正确");
            return messageModel;
        }


        //登陆成功
        messageModel.setObject(user);
        return messageModel;
    }

}
