<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<header class="header">
    <div class="container">
        <c:if test="${sessionScope.loginok!='yes'}">
        <div class="auth-buttons">
            <button class="auth-btn" onclick="location.href='/member/memberform'">회원가입</button>
            <button class="auth-btn" onclick="location.href='/login/loginform'">로그인</button>
        </div>
        </c:if>
        <c:if test="${sessionScope.loginok=='yes'}">
            <div class="auth-buttons">
                <h3>${sessionScope.loginid}님</h3>
                <button class="auth-btn" type="button" id="logoutBtn">로그아웃</button>
            </div>
        </c:if>
    </div>
</header>
<script>
    //로그아웃 버튼
    $("#logoutBtn").click(function (){
        $.ajax({
            type:"get",
            dataType:"text",
            url:"${root}/login/logout",
            success:function (){
                location.reload();
            }
        })
    });
</script>

