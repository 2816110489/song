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
	<input type="hidden" name="pid" value="${listSp.pid }">
	<input type="hidden" name="pid" value="${listSp.pimg }">
	<table>
		<tr>
			<th>商品名称:</th>
			<td><input type="text" class="input-group-text" name="pname" value="${listSp.pname }"></td>
		</tr>
		<tr>
			<th>英文名称</th>
			<td><input type="text" class="input-group-text" name="ename" value="${listSp.ename }"></td>
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
			<td><input type="text" class="input-group-text" name="pcc" value="${listSp.pcc }"></td>
		</tr>
		<tr>
			<th>单价(元)</th>
			<td><input type="text" class="input-group-text" name="price" value="${listSp.price }"></td>
		</tr>
		<tr>
			<th>数量</th>
			<td><input type="text" class="input-group-text" name="pnum" value="${listSp.pnum }"></td>
		</tr>
		<tr>
			<th>标签</th>
			<td><input type="text" class="input-group-text" name="pbq" value="${listSp.pbq }"></td>
		</tr>
		<tr>
			<th>山沟图片上传<img alt="" src="${listSp.pimg }" style="width: 200px; height: 300px;"></th>
			<td><input type="file" name="file"></td>
		</tr>
		<tr>
			<th colspan="2"><button type="button" onclick="update()">保存</button> </th>
		</tr>
	</table>
	</form>
	<script type="text/javascript">
		var aid = '${listSp.aid}';
		var bid = '${listSp.bid}';
		$.post("listpp", function(msg) {
			var str = "<option value='null'>--请选择--</option>";
			for ( var i in msg) {
				if(aid == msg[i].aid)
				{
					str += "<option selected='selected' value='"+msg[i].aid+"'>"+msg[i].aname+"</option>";
				}
				else
				{
					str += "<option value='"+msg[i].aid+"'>"+msg[i].aname+"</option>";
				}
				
			};
			$("select[name='aid']").html(str);
		});
		$.post("listzl", function(msg) {
			var str = "<option value='null'>--请选择--</option>";
			for ( var i in msg) {
				if(bid == msg[i].bid)
				{
					str += "<option selected='selected' value='"+msg[i].bid+"'>"+msg[i].bname+"</option>";
				}
				else
				{
					str += "<option value='"+msg[i].bid+"'>"+msg[i].bname+"</option>";
				}
			}
			$("select[name='bid']").html(str);
		});
		function update() {
			if(window.confirm("确认保存吗?"))
			{
				var formData = new FormData($("#form1")[0]);
				$.ajax({
					type:"post",
					data: formData,
					url:"update",
					processData: false,
					contentType: false,
					success:function(msg){
						if(msg)
						{
							alert("保存成功");
							location.href="splist";
						}
						else
						{
							alert("保存失败");
						}
					}
					
				});
			};
		};
		
	</script>
</body>
</html>