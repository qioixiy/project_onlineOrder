<%@page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>

<jsp:useBean id="jdbc_conn" scope="page" class="db.jdbc" />
<%
	Connection con = jdbc_conn.getConn();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/manager.css" rel="stylesheet" type="text/css"
	media="all" />
<title>菜单管理页面</title>
</head>

<body>
	<div id="container">
		<div id="header">
			<h1 id="title">菜单管理页面</h1>
		</div>

		<div id="main">
			<div id="menu">
				<ul>
					<li><a href="#">查看所有的菜单</a></li>
					<li><a href="menu_manager_op.jsp?op=add">添加新的菜式</a></li>
				</ul>
			</div>

			<div id="content">
				<%
					Statement menu_smt = con.createStatement();
					ResultSet meun_rs = menu_smt.executeQuery("select * from menu order by id desc");
				%>
				<table id="table-userinfo" style="text-align: center;" border="1" cellpadding="1"
					cellspacing="1">
					<%
						String bg_str = "#F0F0F0";
						int index = 0;
					%>
					<tr bgcolor="ccccc0">
						<strong>
						<td width=50>id</td>
						<td width=200>菜名</td>
						<td width=200>菜的类别</td>
						<td width=50>价格</td>
						<td width=50>时间</td>
						<td width=130>简介、说明</td></strong>
					</tr>
					<%
						while (meun_rs.next()) {
							if (0 == index++ % 2) {
								bg_str = "#F0F0F0";
							} else {
								bg_str = "#F2F272";
							}
							String _id = meun_rs.getString("id");
							String _name = meun_rs.getString("name");
							String _style = meun_rs.getString("style");
							String _price = meun_rs.getString("price");
							String _thumb = meun_rs.getString("thumb");
							String _timestamp = meun_rs.getString("timestamp");
							String _details = meun_rs.getString("details");
					%>
					<tr>
						<td bgcolor="<%=bg_str%>" width=50><%=_id%></td>
						<td bgcolor="<%=bg_str%>" width=200><%=_name%></td>
						<td bgcolor="<%=bg_str%>" width=50><%=_style%></td>
						<td bgcolor="<%=bg_str%>" width=50><%=_price%></td>
						<td bgcolor="<%=bg_str%>" width=50><%=_timestamp%></td>
						<td bgcolor="<%=bg_str%>" width=50><%=_details%></td>
						<td bgcolor="#ffffff" width=50 style="text-align: center;">
							<a href="menu_manager_op.jsp?op=del&menu_id=1">删除</a>
						</td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
		</div>

		<div id="footer"></div>
	</div>

</body>
</html>