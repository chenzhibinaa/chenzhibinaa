<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>薪酬发放登记明细</title>
    <link rel="stylesheet" href="css/Salary_send_detail.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<!--网页侧边栏-->
<aside class="box">
    <ul>
        <li><a href="HR_register.jsp">人力资源档案登记</a></li>
        <li><a href="HR_review.jsp">人力资源档案复核</a></li>
        <li><a href="HR_select.jsp">人力资源档案查询</a></li>
        <br><br>
        <li><a href="Salary_register.jsp">薪酬标准登记</a></li>
        <li><a href="Salary_review.jsp">薪酬标准复核</a></li>
        <li><a href="Salary_select.jsp">薪酬标准查询</a></li>
        <li><a href="Salary_send.jsp">薪酬发放登记</a></li>
    </ul>
</aside>

<span class="index">
    <div class="index-0">
        <div><h2>薪酬发放登记明细</h2></div>
        <div><button class="but">提交</button></div>
    </div>

    <div class="index-1">
        <div class="column1"><span>薪酬发放单编号：</span></div>
        <div class="column1"><span>机构：</span></div>
        <div class="column1"><span>总人数： 基本薪酬总额： 实发总额：</span></div>
        <div class="column1"><span>登记日期：   </span></div>
        <div class="column1"><span>登记人：<input type="text"></span></div>
    </div>

    <div class="index-2">
<table>
    <tr>
        <th>档案编号</th>
        <th>姓名</th>
        <th>基本工资</th>
        <th>交通补助</th>
        <th>午餐补助</th>
        <th>通信补助</th>
        <th>养老保险</th>
        <th>失业保险</th>
        <th>医疗保险</th>
        <th>住房公积金</th>
        <th>奖励奖金</th>
        <th>应扣奖金</th>

</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
</table>
    </div>
</span>
</body>
</html>