<%@ page language="java" import="java.sql.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生管理系统</title>
<style type="text/css">
body {
            background-color: rgba(0, 0, 0, 0.434);
        }
        
        * {
            margin: 0px;
            padding: 0%;
        }
        
        .container {
            width: 1200px;
            text-align: center;
            position: relative;
            margin: auto;
        }
        
        ul {
            text-align: center;
            line-height: 48px;
        }
        
        ul li {
            float: left;
            height: 470px;
            list-style: none;
            background-color: aqua;
        }
        
        li:first-child:hover .add {
            border-bottom: 2px solid red;
            font-size: 20px;
            color: aliceblue;
            box-shadow: 0px 2px 20px rgba(137, 137, 137, 0.5);
            visibility: visible;
        }
        
        li:nth-child(2):hover .del {
            border-bottom: 2px solid red;
            font-size: 20px;
            color: aliceblue;
            box-shadow: 0px 2px 20px rgba(137, 137, 137, 0.5);
            visibility: visible;
        }
        
        li:nth-child(3):hover .update {
            border-bottom: 2px solid red;
            font-size: 20px;
            color: aliceblue;
            box-shadow: 0px 2px 20px rgba(137, 137, 137, 0.5);
            visibility: visible;
        }
        
        li:last-child:hover .select {
            border-bottom: 2px solid red;
            font-size: 20px;
            color: aliceblue;
            box-shadow: 0px 2px 20px rgba(137, 137, 137, 0.5);
            visibility: visible;
        }
        
        .add,
        .del,
        .update,
        .select {
            width: 300px;
            background-color: rgba(198, 193, 193, 0.5);
            height: 400px;
            visibility: hidden;
        }
        
        .add>div>span,
        .del>div>span,
        .update>div>span,
        .select>div>span {
            /* margin-left: px; */
            font-size: 18px;
            margin-right: 10px;
        }
        
        .add input,
        .del input,
        .update input,
        .select input {
            outline: none;
            outline: 1px solid red;
        }
        
        .add>input,
        .del>input,
        .select>input,
        .update>input {
            /* margin-left: px; */
            font-size: 18px;
            width: 100px;
            height: 40px;
            background-color: aquamarine;
            border: none;
            outline: none;
            margin-top: 20px;
        }
        
        .add div,
        .del div,
        .update div,
        .select div {
            /* padding: 20px; */
            /* box-sizing: border-box; */
            margin-top: 20px;
        }
</style>
</head>
<body>
 <div class="container">
        <h1>
            学生管理系统
        </h1>
        <ul>
            <li>添加
                <form class="add" action="stuAdd.jsp">
                    <div>
                        <span>请输入学号</span>
                        <input type="text" placeholder="学号" name="add_no">
                    </div>

                    <div>
                        <span>请输入姓名</span>
                        <input type="text" placeholder="姓名" name="add_name">
                    </div>
                    <div>
                        <span>请输入性别</span>
                        <input type="text" placeholder="性别" name="add_sex">
                    </div>

                    <div>
                        <span>请输入年龄</span>
                        <input type="text" placeholder="年龄" name="add_age">
                    </div>
                    <div>
                        <span>请输入系别</span>
                        <input type="text" placeholder="系别" name="add_sdept">
                    </div>
                    <input type="submit" value="确认添加">
                </form>
            </li>
            <li>删除
                <form class="del" action="stuDel.jsp">
                    <div>
                        <span>请输入学号</span>
                        <input type="text" placeholder="学号" name="del_no">
                    </div>
                    <input type="submit" value="确认删除" >
                </form>
            </li>
            <li>更新
                <form class="update" action="stuUpdate.jsp">
                    <div>
                        <span>请输入学号</span>
                        <input type="text" placeholder="学号" name="upe_no">
                    </div>

                    <div>
                        <span>请输入姓名</span>
                        <input type="text" placeholder="姓名" name="upe_name">
                    </div>
                    <div>
                        <span>请输入性别</span>
                        <input type="text" placeholder="性别" name="upe_sex">
                    </div>

                    <div>
                        <span>请输入年龄</span>
                        <input type="text" placeholder="年龄" name="upe_age">
                    </div>
                    <div>
                        <span>请输入系别</span>
                        <input type="text" placeholder="系别" name="upe_sdept">
                    </div>
                    <input type="submit" value="确认更新">
                </form>
            </li>
            <li>查找
                <form class="select" action="stuSelect.jsp">
                    <div>
                        <span>请输入学号</span>
                        <input type="text" placeholder="学号" name="sel_no">
                    </div>
                    <input type="submit" value="确认查找">
                </form>
            </li>
        </ul>


    </div>
    
</body>
</html>
