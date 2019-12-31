<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="from" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="/js/jquery.validatechina.js"></script>
<link rel="stylesheet" href="/css/bootstrap.css" />
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<link rel="stylesheet" href="/js/jquery-ui.css" />
<script type="text/javascript" src="/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="/js/bootstrap.js" ></script>
<script type="text/javascript" src="/js/jquery-ui.js" ></script>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js" ></script>
</head>
<body>
	<div class="active">
			<div class="col-3 text-center" style="float: left;">
				<ul>
					<li><img alt="" src="${listSp.pimg }" style="width: 200px; height: 300px;"></li>
					<li style="color: red;"><h3>￥:${listSp.price }元</h3></li>
					<li>商品名:${listSp.pname }(${listSp.ename })</li>
					<li>尺寸:${listSp.pcc } ${listSp.pbq }</li>
					<li>类型:${listSp.aname }种类:${listSp.bname }</li>
					<li>剩余数量:${listSp.pnum }</li>
				</ul>
			</div>
	</div>
</body>
</html>