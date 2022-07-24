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
	String add_no=request.getParameter("del_no");
	
	String url="jdbc:mysql://localhost:3306/";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, user, password);
	/* Statement state=con.createStatement(); */
	String sql="delete from student where sno=?";
	 PreparedStatement pstmt=con.prepareStatement(sql);
	 pstmt.setString(1, add_no);
	
	 
	   int count=pstmt.executeUpdate();  
	 
	 out.println("成功删除"+count+"行"); 
	/* state.close(); */
	 pstmt.close(); 
	con.close();
%>
</body>
</html>
