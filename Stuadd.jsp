<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String user="root";
	String password="123456";
	String add_no=request.getParameter("add_no");
	String add_name=request.getParameter("add_name");
	String add_age=request.getParameter("add_age");
	
	String add_sex=request.getParameter("add_sex");
	String add_sdept=request.getParameter("add_sdept");
	String url="jdbc:mysql://localhost:3306/";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, user, password);
	/* Statement state=con.createStatement(); */
	String sql="insert into student(sno,sname,ssex,sage,sdept) VALUES(?,?,?,?,?)";
	 PreparedStatement pstmt=con.prepareStatement(sql);
	 pstmt.setString(1, add_no);
	 pstmt.setString(2, add_name);
	 pstmt.setString(3, add_sex);
	pstmt.setString(4, add_age);
	 pstmt.setString(5, add_sdept);
	 
	   int count=pstmt.executeUpdate();  
	 
	 out.println("成功添加"+count+"行"); 
	/* state.close(); */
	 pstmt.close(); 
	con.close();
%>
</body>
</html>
