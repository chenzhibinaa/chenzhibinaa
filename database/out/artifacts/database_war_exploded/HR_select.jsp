<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人力资源档案查询</title>
    <link rel="stylesheet" href="css/HR_select.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
<!--网页侧边栏-->
<aside class="box">
    <ul>
        <br>
        <li><a href="HR_select.jsp">人力资源档案查询</a></li>
        <li><a href="index.jsp">返回主页</a></li>
    </ul>
</aside>

<span class="index">
            <div class="index-0">
                <h2>人力资源档案查询</h2>
            </div>

    <form action="query" method="post" id="queryForm">
        <div class="index-1">
            <span class="index-1-left">
                <div class="line">
        <span class="text">一级机构</span> <select id="Organization1" name="Organization1"
                                               onchange="changeOrganization1(this)" class="column1">
        <option value="-1">未选择</option> </select>
        <span class="text">二级机构</span> <select id="Organization2" name="Organization2"
                                               onchange="changeOrganization2(this)" class="column2">
        <option value="-1">未选择</option> </select>
        <span class="text">三级机构</span> <select id="Organization3" name="Organization3"
                                               onchange="changeOrganization2(this)" class="column2">
        <option value="-1">未选择</option> </select></div>
                <div class="line">
        <span class="text">职位分类</span><input type="text" name="PositionKind" id="PositionKind" class="column1">
        <span class="text">职位名称</span><input type="text" name="PositionName" id="PositionName" class="column2">
        <span class="text">建档时间</span><input type="text" name="RegisterTime" id="RegisterTime" class="column2"></div>
            </span>

            <span class="index-1-right">
        <span id="Msg" style="font-size: 12px;color: red">${MessageModel.msg}</span> <br>
        <button class="but" type="button" id="queryBtn" class="but">查询</button></span>
        </div>
    </form>

    <div class="index-2">
<table>
    <tr>
        <th >档案编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>一级机构</th>
        <th>二级机构</th>
        <th>三级机构</th>
        <th>职位名称</th>
        <th>查询</th>
</tr>

<tr>
    <td></td>
    <td></td>
    <td></td>
    <xtd></xtd>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="HR_register.jsp">查看明细</a></td>
</tr>
</table>
    </div>
</span>
</body>

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    let Organization1Data = ['集团总部'];
    let Organization2Data = [['互联网公司', '餐饮公司', '公关公司', '房地产公司'],];
    let Organization3Data = [
        [
            ['开发部', '维护部', '策划部', '后勤部'],
            ['餐饮部', '采购部', '管理层'],
            ['公关部', '商务部'],
            ['销售部', '施工部'],
        ],
    ];
    let Organization1 = document.getElementById("Organization1");
    let Organization2 = document.getElementById("Organization2");
    let Organization3 = document.getElementById("Organization3");
    let currentIndex = -1;

    for (let i = 0; i < Organization1Data.length; i++) {
        let Organization1Option = new Option(Organization1Data[i], i);
        Organization1.options.add(Organization1Option);
    }

    /**
     * 改变一级机构时所需要的操作
     * @param obj obj
     */
    function changeOrganization1(obj) {
        if (obj.value === -1) {
            Organization2.options.length = 0;
            Organization3.options.length = 0;
        }
        currentIndex = obj.value;
        let Organization2Temp = Organization2Data[currentIndex];
        let Organization3Temp = Organization3Data[currentIndex][0];

        Organization2.options.length = 0;
        Organization3.options.length = 0;

        for (let i = 0; i < Organization2Temp.length; i++) {
            let option = new Option(Organization2Temp[i], i)
            Organization2.options.add(option);
        }

        for (let i = 0; i < Organization3Temp.length; i++) {
            let option = new Option(Organization3Temp[i], i);
            Organization3.options.add(option);
        }
    }

    /**
     * 改变二级机构时 操作
     * @param obj obj
     */
    function changeOrganization2(obj) {
        let selectIndex = obj.selectedIndex;
        let Organization3Temp = Organization3Data[currentIndex][selectIndex];

        Organization3.options.length = 0;

        for (let i = 0; i < Organization3Temp.length; i++) {
            let Organization3Option = new Option(Organization3Temp[i], i);
            Organization3.options.add(Organization3Option);
        }
    }

    $("#queryBtn").click(function () {
        $("#queryForm").submit();
    });
</script>
</html>
