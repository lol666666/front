<%--
  Created by IntelliJ IDEA.
  User: duanlingling
  Date: 16/7/27
  Time: 上午10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<script type="text/javascript">


</script>
</head>
<html>
  <head>
    <title>$Title$</title>
  </head>



  <body>


  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3">
        <label>大类：</label>
        <select name="bigname" id="bigname" class="form-control">
          <option value="1">编程技术</option>
          <option value="2">社交网站</option>
          <option value="3">好吃的</option>
        </select>
      </div>
      <div class="col-sm-3">
        <label>小类：</label>
        <select name="smallname[]" id="smallname" multiple="" class="form-control">
        </select>
      </div>
      <div class="col-sm-3">
        <button type="button" id="add" class="btn btn-success">添加</button>
      </div>
      <div class="col-sm-3">
        <label>结果：</label>
        <select name="result[]" id="result" multiple="" class="form-control">
        </select>
      </div>
    </div>
  </div>


  <%--<input type="checkbox" name="father" forcheckboxgroup="groupname1"/>请求--%>
  <%--<input type="checkbox" name="son" group="groupname1"/>--%>
  <%--<input type="checkbox" name="son" group="groupname1"/>--%>
  <%--<input type="checkbox" name="son" group="groupname1"/>--%>



  <%--<input name="input1" type="checkbox" value="input1">input1</input>--%>
  <%--<input name="input2" type="checkbox" value="input2">input2</input>--%>
  <%--<input name="input3" type="checkbox" value="input3">input3</input>--%>
  <%--<input name="input4" type="checkbox" value="input4">input4</input>--%>
  <%--</body>--%>
  <%--<script type='text/javascript' src='http://code.jquery.com/jquery-1.8.2.js'></script>--%>




  <%--<h3>File Upload:</h3>--%>

  <%--<div>wellcome</div>--%>
  <%--&lt;%&ndash;<div onclick="do">wellcome</div>&ndash;%&gt;--%>
  <%--<div>response<textarea></textarea></div>--%>
  <%--<button id="123">提交按钮</button>--%>
  <%--&lt;%&ndash;$END$&ndash;%&gt;--%>
  </body>
</html>
