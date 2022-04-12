<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>人力资源档案登记</title>
    <link rel="stylesheet" href="css/HR_register.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
<!--网页侧边栏-->
<aside class="box">

    <ul>
        <br>
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
                <h2>人力资源档案登记</h2>
                <h4>档案编号：</h4></div>
    <div id="test" class="test-item">

    <form action="test" method="post" id="testForm">
            <div class="index-1">
        <span class="index-1-left">
        <div class="line">
        <span class="text">一级机构</span>
        <select id="Organization1" name="Organization1" onchange="changeOrganization1(this)" class="column1">
            <option value="-1">未选择</option>
        </select>
        <span class="text">二级机构</span>
        <select id="Organization2" name="Organization2" onchange="changeOrganization2(this)" class="column1">
            <option value="-1">未选择</option>
        </select>
        <span class="text">三级机构</span>
        <select id="Organization3" name="Organization3" onchange="changeOrganization2(this)" class="column2">
            <option value="-1">未选择</option>
        </select></div>

        <div class="line">
        <span class="text">职位分类</span> <input type="text" name="PositionKind" id="PositionKind" class="column1">
        <span class="text">职位名称</span> <input type="text" name="PositionName" id="PositionName" class="column1">
            <span class="text">职称</span> <input type="text" name="SalaryStandard" id="SalaryStandard"
                                                class="column2"></div>

        <div class="line">
        <span class="text">姓名</span> <input type="text" name="EmployeeName" id="EmployeeName" class="column1">
        <span class="text">性别</span> <select name="Sex" id="Sex" class="column1">
        <option value="男">男</option>
        <option value="女">女</option></select>
            <span class="text">民族</span><select name="Nation" id="Nation" class="column2"> </select></div>

        <div class="line">
        <span class="text">电话</span> <input type="text" name="Phone" id="Phone" class="column1">
        <span class="text">邮箱</span> <input type="email" name="Email" id="Email" class="column1">
        <span class="text">住址</span> <input type="text" name="Address" id="Address" class="column2"></div>

        <div class="line">
        <span class="text">国籍</span> <input type="text" name="Country" id="Country" class="column1">
        <span class="text">身份证</span><input type="text" name="IDcard" id="IDcard" class="column1">
        <span class="text">社会保障号码</span><input type="text" name="Socialcard" id="Socialcard" class="column2"></div>
        </span>

        <span class="index-1-right">
            <img src="" class="img">
            <div class="img-div">
                上传照片<input type="file" id="file" onchange="imgChange(this)" accept="image/*"/></div>
            <div class="img-div">
        <input type="hidden" name="img" id="img" value="">
        <input type="hidden" name="Statement" id="Statement" value="复核">
            </div>
            </span></div>

<div class="index-2">
        <div class="line2">
        <span class="text">学历</span> <select name="Education" id="Education" class="column1">
        <option value="初中及以下">初中及以下</option>
        <option value="职高/技校">职高/技校</option>
        <option value="高中">高中</option>
        <option value="专科">专科</option>
        <option value="本科">本科</option>
        <option value="硕士">硕士</option>
        <option value="博士及以上">博士及以上</option>
    </select>
         <span class="text">开户行</span><input type="text" name="Bank" id="Bank" class="column1">
         <span class="text">银行账号</span><input type="text" name="BankID" id="BankID" class="column4">
        </div>

        <div class="line2">
         <span class="text">登记人</span><input type="text" name="RegisterUser" id="RegisterUser" class="column3">
         <span class="text">建档时间</span><input type="text" name="RegisterTime" id="RegisterTime" class="column4">
        </div>

    <div class="line3"> <span class="text2">个人履历</span><input type="text" name="personaltext" id="personaltext" class="column5"></div>
    <div class="line3">  <span class="text2">家庭关系信息</span><input type="text" name="familytext" id="familytext" class="column5"></div>
    <div class="line3"> <span class="text2">备注</span><input type="text" name="note" id="note" class="column5"></div>

    <div class="line2">
        <button class="but" type="button" id="testBtn">确认登记</button><br>
   <div id="Msg" style="font-size: 20px;color: red">${Message.msg}</div>
    </div>

    </div>
    </form>
        </div>
</span>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">

    var Nation = [
        "汉族", "壮族", "满族", "回族", "苗族", "维吾尔族", "土家族", "彝族", "蒙古族", "藏族", "布依族", "侗族", "瑶族", "朝鲜族", "白族", "哈尼族",
        "哈萨克族", "黎族", "傣族", "畲族", "傈僳族", "仡佬族", "东乡族", "高山族", "拉祜族", "水族", "佤族", "纳西族", "羌族", "土族", "仫佬族", "锡伯族",
        "柯尔克孜族", "达斡尔族", "景颇族", "毛南族", "撒拉族", "布朗族", "塔吉克族", "阿昌族", "普米族", "鄂温克族", "怒族", "京族", "基诺族", "德昂族", "保安族",
        "俄罗斯族", "裕固族", "乌孜别克族", "门巴族", "鄂伦春族", "独龙族", "塔塔尔族", "赫哲族", "珞巴族"
    ];
    window.onload = function () {
        var nat = document.getElementById("Nation");
        for (var i = 0; i < Nation.length; i++) {
            var option = document.createElement('option');
            option.value = Nation[i];
            var txt = document.createTextNode(Nation[i]);
            option.appendChild(txt);
            nat.appendChild(option);
        }
    }

    var _Time = document.getElementById('RegisterTime');

    var date = new Date();
    var seperator = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentDate = year + seperator + month + seperator + strDate; //当前日期

    _Time.value = currentDate; //赋值给input.value

    function imgChange(obj) {
        var image = obj.files[0]; //获取文件域中选中的图片
        var reader = new FileReader(); //实例化文件读取对象
        reader.readAsDataURL(image); //将文件读取为 DataURL,也就是base64编码
        reader.onload = function (ev) { //文件读取成功完成时触发
            var dataURL = ev.target.result; //获得文件读取成功后的DataURL,也就是base64编码
            document.querySelector("img").src = dataURL; //将DataURL码赋值给img标签
            document.getElementById("img").value = dataURL;
            console.log(dataURL);
        }
        console.log(image);
    }


    $("#testBtn").click(function () {

        var PositionName = $("#PositionName").val();
        var Email = $("#Email").val();


        //判断姓名是否为空
        if (isEmpty(PositionName)) {
            $("#Msg").html("职位名称不可为空！");
            return;
        }
        if (isEmpty(Email)) {
            $("#Msg").html("邮箱不可为空！");
            return;
        }

        $("#testForm").submit();
    });

    /**
     * 判断字符串是否为空
     * @param str
     * @returns
     */
    function isEmpty(str) {
        if (str == null || str.trim() == "") {
            return true;
        }
        return false;
    }


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
     * 改变省份时所需要的操作
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
     * 改变城市时 操作
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
</script>

</html>
