<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Drift</title><style>
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
        background: url("/Jstl/asset/img/search_tbb.png");
        width: 138px;
        height: 44px;
        overflow: hidden;
        float: left;
    }
    .search_button .input_button{
        width: 138px;
        height: 44px;
        border: 0;
        background: transparent;
        cursor: pointer;
    }
    .clear{
        clear: both;
    }
</style>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<form action="/Jstl/search" method="post" class="search_form">
    <div class="search_input">
        <input type="text" class="search_input_text" name="keywords" >
    </div>
    <div class="search_button">
        <button type="submit" class="input_button"></button>
    </div>
</form>
<div class="clear"></div>
<form action="/Jstl/user/delete" class="maintain_form" method="post">
    <button type="button" class="delete_button">删除</button>
    <table>
        <c:choose>
            <c:when test="${users != null}">
                <c:forEach items="${users}" var="user" varStatus="status">
                    <tr>
                        <td><input type="checkbox" class="cid" value="<c:out value="${user.id}"></c:out>"></td>
                        <td><c:out value="${user.name}"></c:out></td>
                        <td><c:out value="${user.password}"></c:out></td>
                        <td><c:out value="${user.sex}"></c:out></td>
                        <td><c:out value="${user.email}"></c:out></td>
                        <td><fmt:formatDate value="${user.ctime}" type="both" timeStyle="default"></fmt:formatDate></td>
                        <td><c:out value="${user.face}"></c:out></td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td>没有数据</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </table>
</form>
<script>
    $(document).ready(function(){
       $(".delete_button").click(function(){
           var i = 0;
           $(".cid").each(function(){
               if ($(this).is(':checked')){
                   $(this).attr("name","cid");
                   i++;
               }
           });
           if (i > 0){
               $(".maintain_form").submit();
           }else {
               alert("请先从列表中作出选择");
           }
       })
    })
</script>
</body>
</html>
