<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>薪酬标准查询</title>
    <link rel="stylesheet" href="css/Salary_select.css">
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
        <div><h2>薪酬标准查询</h2></div>
        <div><button class="but">查询</button></div>
    </div>

    <div class="index-1">
        <div class="line1">
        <span class="text">请输入薪酬标准编号</span> <input type="text" class="column1">
        </div>

        <div class="line1">
        <span class="text">请输入关键字</span> <input type="text" class="column1">
        </div>

        <div class="line1">
        <span class="text">请输入登记时间</span> <input type="text" class="column2"> <span class="column3"> 至 </span>
            <input type="text" class="column2"> <span class="column4">（YYYY-MM-DD）</span>
        </div>

    </div>

</body>
</html>