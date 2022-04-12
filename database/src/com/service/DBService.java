package com.service;

import com.entity.Employment;
import com.entity.vo.Message;
import com.mapper.Mapper;
import com.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

public class DBService {
    public Message text(String Organization1, String Organization2, String Organization3, String PositionKind, String PositionName
            , String SalaryStandard, String EmployeeName, String Sex, String Email, String Phone, String Address, String Country, String Nation
            , String IDcard, String Socialcard, String Education, String Bank, String BankID
            , String RegisterUser, String RegisterTime, String personaltext, String familytext, String note) {

        Message message = new Message();
        Employment e = new Employment();

        if (Organization1.equals("0")) {
            e.setOrganization1("集团总部");
            if (Organization2.equals("0")) {
                e.setOrganization2("互联网公司");
                if (Organization3.equals("0")) {
                    e.setOrganization3("开发部");
                } else if (Organization3.equals("1")) {
                    e.setOrganization2("维护部");
                } else if (Organization3.equals("2")) {
                    e.setOrganization2("策划部");
                } else if (Organization3.equals("3")) {
                    e.setOrganization2("后勤部");
                }
            } else if (Organization2.equals("1")) {
                e.setOrganization2("餐饮公司");
                if (Organization3.equals("0")) {
                    e.setOrganization3("餐饮部");
                } else if (Organization3.equals("1")) {
                    e.setOrganization2("采购部");
                } else if (Organization3.equals("2")) {
                    e.setOrganization2("管理层");
                }
            } else if (Organization2.equals("2")) {
                e.setOrganization2("公关公司");
                if (Organization3.equals("0")) {
                    e.setOrganization3("公关部");
                } else if (Organization3.equals("1")) {
                    e.setOrganization2("商务部");
                }
            } else if (Organization2.equals("3")) {
                e.setOrganization2("房地产公司");
                if (Organization3.equals("0")) {
                    e.setOrganization3("销售部");
                } else if (Organization3.equals("1")) {
                    e.setOrganization2("施工部");
                }

            }
        }

            e.setPositionKind(PositionKind);
            e.setPositionName(PositionName);
            e.setSalaryStandard(SalaryStandard);
            e.setEmployeeName(EmployeeName);
            e.setSex(Sex);
            e.setEmail(Email);
            e.setPhone(Phone);
            e.setAddress(Address);
            e.setCountry(Country);
            e.setNation(Nation);
            e.setIDcard(IDcard);
            e.setSocialcard(Socialcard);
            e.setEducation(Education);
            e.setBank(Bank);
            e.setBankID(BankID);
            e.setRegisterUser(RegisterUser);
            e.setRegisterTime(RegisterTime);
            e.setPersonaltext(personaltext);
            e.setFamilytext(familytext);
            e.setNote(note);
            message.setObject(e);
            SqlSession session = GetSqlSession.createSqlSession();
            Mapper mapper = session.getMapper(Mapper.class);

            session.insert("com.mapper.Mapper.InsertEmployment", e);
            session.commit();
            return message;

        }

    }


