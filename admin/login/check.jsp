<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
        String sql = "select * from users ";
%>

         <%
             request.setCharacterEncoding("UTF-8");//设置统一字符编码
             String a = request.getParameter("username");
             String b = request.getParameter("pwd");    
             int x=0;
	if(a!=null||b!=null){
	if(a!=""||b!=""){
	        sql=sql+"where ";
	if(a!=""){
	        if(x==1){
		sql=sql+"and ";
	        }
	        x=1;
	        sql=sql+"username="+"\""+a+"\"";
	}
	if(b!=""){
	        if(x==1){
		sql=sql+" and ";
	        }
	        x=1;
	        sql=sql+"pwd="+b;
	}
	
	}
	}


         %>


<%@ include file="../../class/config.jsp" %>    
<%@ include file="../../class/user.jsp" %>
<%@ include file="../../class/new.jsp" %>
<%@ include file="../../class/lanmu.jsp" %>
<%
	Conf cnf = new Conf(); 
	Lanmu lm = new Lanmu();
	String host = cnf.host();
	String user = cnf.user();
	String pwd = cnf.pwd();
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(host,user,pwd);
	Statement statement = con.createStatement();
	ResultSet rs = statement.executeQuery(sql);
	int id = 0;
	while (rs.next()) {
		id = rs.getInt("id");
		out.print(id+"<br>");
		if(id!=0){
			response.sendRedirect("../web/main.html");
		}
	}
	if(id==0){
		response.sendRedirect("login.jsp");
	}
	statement.close();
	con.close();
%>




</table>
</body>
</html>