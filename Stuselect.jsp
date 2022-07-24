<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 .container {
            display: flex;
            width: 500px;
            background-color: rgba(0, 0, 0, 0.5);
            height: 200px;
            text-align: center;
            line-height: 30px;
        }
        
        .ss {
            flex-grow: 1;
        }
        
        .no {
            background-color: rgba(127, 255, 212);
            height: 30px;
        }
        
        .context {
            background-color: rgba(127, 255, 212, 0.3);
            height: 170px;
        }
</style>
</head>
<body>
<%!
String stuno ;
String stuname ;
String stusex ;
String stuage ;
String stusdept ;
%>
<%
	String user="root";
	String password="123456";
	String sel_no=request.getParameter("sel_no");
	
	String url="jdbc:mysql://localhost:3306/";   //该处需要自建一个数据库，并输入数据库的命名。//
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, user, password);
	/* Statement state=con.createStatement(); */
	String sql = "select * from student where sno=?";
	
	 PreparedStatement pstmt=con.prepareStatement(sql);
	 pstmt.setString(1, sel_no);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		 stuno = rs.getString("sno");
		 stuname = rs.getString("sname");
		 stusex = rs.getString("ssex");
		 stuage = rs.getString("sage");
		 stusdept = rs.getString("sdept");
		
		/* out.println(stuno + "  " + stuname + " "+stusex+" "+stuage+" "+stusdept+"<br>"); */
	}
	
	 
	/* state.close(); */
	 pstmt.close(); 
	con.close();
%>

 <div class="container">
        <div class="ss">
            <div class="no">学号</div>
            <div class="context"><%= stuno%></div>
        </div>
        <div class="ss">
            <div class="no">姓名</div>
            <div class="context"><%= stuname%></div>
        </div>
        <div class="ss">
            <div class="no">性别</div>
            <div class="context"><%=  stusex%></div>
        </div>
        <div class="ss">
            <div class="no">年龄</div>
            <div class="context"><%= stuage%></div>
        </div>
        <div class="ss">
            <div class="no">系别</div>
            <div class="context"><%= stusdept%></div>
        </div>
    </div>
</body>
</html>
