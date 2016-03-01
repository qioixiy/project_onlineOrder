<%@page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>

<jsp:useBean id="jdbc_conn" scope="page" class="db.jdbc" />
<%
	Connection con = jdbc_conn.getConn();
	Statement stmt = con.createStatement();
	String user = (String) session.getAttribute("username");
	
	ResultSet rs = stmt.executeQuery("select * from manager where username=" + "'" + user + "'");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/manager.css" rel="stylesheet" type="text/css" media="all"/>
<title>系统管理页面</title>
</head>

<body>

	<%
		if (rs.next()) {
			System.out.println(user + " find");
	%>

	<div id="container">
		<div id="header">
			<h1 id="h1-header">系统管理页面</h1>
		</div>

		<div id="main">
			<div id="menu">
				<ul>
					<li><a href="#">会员管理</a></li>
					<li><a href="#">订单管理</a></li>
					<li><a href="#">添加菜单信息</a></li>
					<li><a href="#">发布行业信息、新闻</a></li>
				</ul>
			</div>
			
			<div id="content">
				
			</div>
		</div>

		<div id="footer"></div>
	</div>

	<%
		} else {
			System.out.println(user + " no find");
	%>
	<h2 id="h2-err">你不是系统管理员</h2>
	<a href="../">返回登录页面</a>
	<%
		}
	%>

</body>
</html>