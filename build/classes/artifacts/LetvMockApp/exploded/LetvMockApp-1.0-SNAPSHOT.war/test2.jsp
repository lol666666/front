<%--
  Created by IntelliJ IDEA.
  User: baby
  Date: 7/28/16
  Time: 01:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript">
        function checkSelect(R_URI){
            var option1,option2;
            switch (R_URI) {
                case "第一":
                    option1 = new Option("HTML","HTML");
                    option2 = new Option("Java","Java");
                    break;

                case "第二":
                    option1 = new Option("Sqlserver","Sqlserver");
                    option2 = new Option(".Net",".Net");
                    break;
                case "第三":
                    option1 = new Option("Struts","Structs");
                    option2 = new Option("Ajax","Ajax");
                    break;
            }
            document.getElementById("subject").length = 1;
            document.getElementById("subject").options.add(option1);
            document.getElementById("subject").options.add(option2);
        }

        function checkPro(obj){
            var arr = new Array();
            arr["浙江"] = ["杭州","嘉兴","湖州"];
            arr["江苏"] = ["南京","苏州","南通"];
            arr["福建"] = ["福州","厦门","福鼎"];

            var proValue = obj.value;
            document.getElementById("city").length = 1;

            for ( var i in arr[proValue]) {
                var options;
                options = new Option(arr[proValue][i],arr[proValue][i]);
                document.getElementById("city").options.add(options);
            }
        }



    </script>
</head>
<body>
<form method="get" name="jsForm">
    <table>
        <tr>
            <td>接口MOCK</td>
        </tr>
        <tr>
            <td>
                Request
            </td>
            <td>
                <select name="R_URI" onchange="checkSelect(this.value)">
                    <option value="">--请选择URI--</option>
                    <option value="第一">第一</option>
                    <option value="第二">第二</option>
                    <option value="第三">第三</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                Json文件
            </td>
            <td>
                <select name="subject" id="subject">
                    <option value="">--请选择相对应的JSON 文件--</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Response 结果</td>
        </tr>
        <tr>
            <td>
            <textarea name="message" cols="28" rows="5" onKeyDown="textCounter(message,remLen,10000);" onKeyUp="textCounter(message,remLen,6);"></textarea>
            </td>
        </tr>
        <tr>
            <td>
            <input name="cancel" id="cancel" type="button" value="cancel"/>
            </td>
            <td>
            <input name="submit" id="submit" type="submit"/>
            </td>
        </tr>

    </table>






</form>





</body>
</html>
