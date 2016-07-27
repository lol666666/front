<%--
  Created by IntelliJ IDEA.
  User: liuyingjun
  Date: 7/27/16
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title> 3级联动例子 </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Language" content="UTF-8" />
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta content="all" name="robots" />
    <SCRIPT LANGUAGE="JavaScript">
        <!--
        var assessmentTypes = [
            {atcode: "10", typename: "typename1"},
            {atcode: "20", typename: "typename2"},
            {atcode: "30", typename: "typename3"}
        ];
        var assessmentContents = [
            {atcode: "10", acCode: "10", acName: "acName1"},
            {atcode: "20", acCode: "20", acName: "acName2"},
            {atcode: "20", acCode: "30", acName: "acName3"},
            {atcode: "30", acCode: "40", acName: "acName4"},
            {atcode: "30", acCode: "50", acName: "acName5"},
            {atcode: "30", acCode: "60", acName: "acName6"}
        ];
        var assessmentStandards = [
            {atcode: "10", acCode: "10", asCode: "10", atContent: "atContent1"},
            {atcode: "10", acCode: "10", asCode: "20", atContent: "atContent2"},
            {atcode: "10", acCode: "10", asCode: "30", atContent: "atContent3"},
            {atcode: "20", acCode: "20", asCode: "40", atContent: "atContent4"},
            {atcode: "20", acCode: "20", asCode: "50", atContent: "atContent5"},
            {atcode: "20", acCode: "30", asCode: "60", atContent: "atContent6"},
            {atcode: "20", acCode: "30", asCode: "70", atContent: "atContent7"},
            {atcode: "30", acCode: "40", asCode: "80", atContent: "atContent8"},
            {atcode: "30", acCode: "40", asCode: "90", atContent: "atContent9"},
            {atcode: "30", acCode: "50", asCode: "100", atContent: "atContent10"},
            {atcode: "30", acCode: "60", asCode: "110", atContent: "atContent11"}
        ];

        function loadSelect(id, list, valueField, textField) {
            var html = "<option value='-1'>------请选择---</option>";
            if(list!=null && list.length>0) {
                for(var i=0, len=list.length; i<len; i++) {
                    html += "<option value='" + list[i][valueField] + "'>" + list[i][textField] + "</option>";
                }
            }

            $(id).innerHTML=html;
        }

        function onload() {
            loadSelect("category1", assessmentTypes, "atcode", "typename");
            loadSelect("category2");
            loadSelect("category3");
        }

        function filterList(dataList, valueField, value) {
            var list = [];
            if(dataList!=null && dataList.length>0) {
                for(var i=0, len=dataList.length; i<len; i++) {
                    if(dataList[i][valueField]==value) {
                        list[list.length] = dataList[i];
                    }
                }
            }
            return list;
        }

        function onCategory1Change(object) {
            var list = filterList(assessmentContents, "atcode", object.value);

            loadSelect("category2", list, "acCode", "acName");
            loadSelect("category3");
        }

        function onCategory2Change(object) {
            var list = filterList(assessmentStandards, "acCode", object.value);

            loadSelect("category3", list, "asCode", "atContent");
        }

        function onCategory3Change(object) {
        }

        function $(id) {
            return document.getElementById(id);
        }

        window.onload = onload;
        //-->
    </SCRIPT>
</head>

<body onload = "onload()">
<select id="category1" onchange="onCategory1Change(this)"></select>
<select id="category2" onchange="onCategory2Change(this)"></select>
<select id="category3" onchange="onCategory3Change(this)"></select>
</body>
</html>

