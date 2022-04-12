package com.mapper;

import com.entity.Employment;
import com.entity.User;

/**
 * 用户接口类
 */
public interface Mapper {
    public User queryUserByName(String user);
    public Employment InsertEmployment(String Organization1, String Organization2, String Organization3, String PositionKind, String PositionName
            , String SalaryStandard, String EmployeeName, String Sex, String Email, String Phone, String Address, String Country, String Nation
            , String IDcard, String Socialcard, String Education, String Bank, String BankID
            , String RegisterUser, String RegisterTime, String personaltext, String familytext, String note);

}
