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
<form id="form1">
	<table>
		<tr>
			<th>商品名称:</th>
			<td><input type="text" class="input-group-text" name="pname"></td>
		</tr>
		<tr>
			<th>英文名称</th>
			<td><input type="text" class="input-group-text" name="ename"></td>
		</tr>
		<tr>
			<th>商品品牌</th>
			<td>
				<select name="aid">
					
				</select>
			</td>
		</tr>
		<tr>
			<th>商品种类</th>
			<td>
				<select name="bid">
						
				</select>
			</td>
		</tr>
		<tr>
			<th>尺寸</th>
			<td><input type="text" class="input-group-text" name="pcc"></td>
		</tr>
		<tr>
			<th>单价(元)</th>
			<td><input type="text" class="input-group-text" name="price"></td>
		</tr>
		<tr>
			<th>数量</th>
			<td><input type="text" class="input-group-text" name="pnum"></td>
		</tr>
		<tr>
			<th>标签</th>
			<td><input type="text" class="input-group-text" name="pbq"></td>
		</tr>
		<tr>
			<th>山沟图片上传</th>
			<td><input type="file" name="file"></td>
		</tr>
		<tr>
			<th colspan="2"><button onclick="add()">添加</button> </th>
		</tr>
	</table>
	</form>
	<script type="text/javascript">
		$.post("listpp", function(msg) {
			var str = "<option value='null'>--请选择--</option>";
			for ( var i in msg) {
				str += "<option value='"+msg[i].aid+"'>"+msg[i].aname+"</option>";
			};
			$("select[name='aid']").html(str);
		});
		$.post("listzl", function(msg) {
			var str = "<option value='null'>--请选择--</option>";
			for ( var i in msg) {
				str += "<option value='"+msg[i].bid+"'>"+msg[i].bname+"</option>";
			};
			$("select[name='bid']").html(str);
		});
		function add() {
			if(window.confirm("确认添加吗?"))
			{
				var formData = new FormData($("#form1")[0]);
				$.ajax({
					type:"post",
					data: formData,
					url:"add",
					processData: false,
					contentType: false,
					success:function(msg){
						if(msg)
						{
							alert("添加成功")
							location.href="splist";
						}
						else
						{
							alert("添加失败");
						}
					}
					
				});
			};
		};
		
	</script>
</body>
</html>