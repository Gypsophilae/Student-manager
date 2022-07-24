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
	String user = "root";
	String password = "123456";
	String upd_no=request.getParameter("upe_no");
	String upd_name=request.getParameter("upe_name");
	String upd_age=request.getParameter("upe_age");
	
	String upd_sex=request.getParameter("upe_sex");
	String upd_sdept=request.getParameter("upe_sdept");
	String url = "jdbc:mysql://localhost:3306/";  //该处需要自建一个数据库，并输入数据库的命名。//
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, user,password);
	/* Statement stat = conn.createStatement(); */
	String sql = "update student set sname=?,ssex=?,sage=?,sdept=? WHERE sno=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	 pstmt.setString(1, upd_name);
	 pstmt.setString(2,upd_sex );
	 pstmt.setString(3, upd_age);
	pstmt.setString(4, upd_sdept);
	 pstmt.setString(5, upd_no);
	 
	   int count=pstmt.executeUpdate();  
	 
	 out.println("成功更新"+count+"行"); 
	/* state.close(); */
	 pstmt.close(); 
	con.close();
	%>
</body>
</html>
