<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/Salary_register.css">
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
        <div><h2>薪酬标准登记</h2></div>
        <div><button class="but">提交</button></div>
    </div>

    <div class="index-1">
        <div class="line1">
        <span class="text">薪酬标准编号</span> <input type="text" class="column1">
        <span class="text">薪酬标准名称</span> <input type="text" class="column1">
        <span class="text">薪酬总额</span> <input type="text" class="column1">
        </div>
        <div class="line1">
        <span class="text">制定人</span> <input type="text" class="column1">
        <span class="text">登记人</span> <input type="text" class="column1">
        <span class="text">登记时间</span> <input type="text" class="column1">
        </div>
    </div>

    <div class="index-2">
<table>
    <tr>
        <th >序号</th>
        <th>薪酬项目名称</th>
        <th>金额</th>
    </tr>

        <tr>
    <td>1</td>
    <td>基本工资</td>
    <td></td>
    </tr>
        <tr>
    <td>2</td>
    <td>交通补助</td>
    <td></td>
    </tr>
        <tr>
    <td>3</td>
    <td>午餐补助</td>
    <td></td>
    </tr>
        <tr>
    <td>4</td>
    <td>通信补助</td>
    <td></td>
    </tr>
        <tr>
    <td>5</td>
    <td>养老保险</td>
    <td></td>
    </tr>
        <tr>
    <td>6</td>
    <td>失业保险</td>
    <td></td>
    </tr>
        <tr>
    <td>7</td>
    <td>医疗保险</td>
    <td></td>
    </tr>
        <tr>
    <td>8</td>
    <td>住房公积金</td>
    <td></td>
    </tr>
</table>
    </div>
</span>
</body>
</html>
