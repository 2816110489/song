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
<form action="splist" method="post">
	<div class="text-center">
	<input type="text" name="pname" class="input-group-text" placeholder="查询的商品名称" style="margin-left: 600px; margin-top: 30px; line-height: 30px;">
	<button class="btn btn-primary">查询</button>
	<a href="toadd">添加</a>
	<button type="button" onclick="delall()">批量删除</button>
	</div>
	<div class="active">
		<c:forEach items="${listSp }" var="i">
			<div class="col-3 text-center" style="float: left;">
				<ul>
					<li><img alt="" src="${i.pimg }" style="width: 200px; height: 300px;"></li>
					<li style="color: red;"><h3>￥:${i.price }元</h3></li>
					<li>商品名:<a href="splist2?pid=${i.pid }">${i.pname }</a>(${i.ename })</li>
					<li>尺寸:${i.pcc } ${i.pbq }</li>
					<li><a href="toupdate?pid=${i.pid }">编辑</a><button class="btn btn-default" onclick="del(${i.pid })">删除</button><input type="checkbox" value="${i.pid }"></li>
				</ul>
			</div>
		</c:forEach>
	</div>
	
	<div class="col-12 text-center" style="float: left; margin-bottom: 0px;">
		<p><button class="btn btn-group-sm" name="pageNum" value="1">首页</button>
		<button class="btn btn-group-sm" name="pageNum" value="${pageInfo.prePage ==0 ? 1 :pageInfo.prePage }">上一页</button>
		<button class="btn btn-group-sm" name="pageNum" value="${pageInfo.nextPage == pageInfo.pages ? pageInfo.nextPage : pageInfo.pages   }">下一页</button>
		<button class="btn btn-group-sm" name="pageNum" value="${pageInfo.pages }">尾页</button></p>
	</div>
</form>

<script type="text/javascript">
	function delall() {
		if(window.confirm("确认删除?"))
		{
			
			var ids = $("input[type='checkbox']:checked").map(function() {
				return this.value;
			}).get().join();
			
			
			$.post("del", {ids:ids}, function(msg) {
				if(msg)
				{
					alert("删除成功")
					location.href="splist";
				}
				else
				{
					alert("删除失败");
				}
			});
			
		};
	};
	
	function del(ids) {
		if(window.confirm("确认删除?"))
		{	
			$.post("del", {ids:ids}, function(msg) {
				if(msg)
				{
					alert("删除成功");
					location.href="splist";
				}
				else
				{
					alert("删除失败");
				}
			});
		};
	};

</script>

</body>
</html>