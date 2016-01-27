<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Drift</title>
    <style>
        .search_input{
            width: 612px;
            height: 42px;
            border: #e8e8e6 1px solid;
            border-right: none;
            padding: 0;
            float: left;
        }
        .search_input .search_input_text{
            width: 606px;
            height: 30px;
            border: 0;
            margin-top: 5px;
            line-height: 30px;
            font-family: Microsoft YaHei, serif;
            font-size: 20px;
            font-weight: 100;
            color: rgba(0,0,0,.6);
        }
        .search_input .search_input_text:focus{
            outline: none;
        }
        .search_button{
            background: url("asset/img/search_tbb.png");
            width: 138px;
            height: 44px;
            overflow: hidden;
            float: left;
        }
        .search_button .input_button{
            width: 138px;
            height: 38px;
            border: 0;
            background: transparent;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form action="/Jstl/search" method="get">
    <div class="search_input">
        <input type="text" class="search_input_text" name="keywords" >
    </div>
    <div class="search_button">
        <button type="submit" class="input_button"></button>
    </div>
</form>
</body>
</html>
