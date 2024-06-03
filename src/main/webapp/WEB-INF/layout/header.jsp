<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<header class="header">
    <div class="container">
        <div class="auth-buttons">
            <button class="auth-btn" onclick="location.href='/signup'">회원가입</button>
            <button class="auth-btn" onclick="location.href='/login'">로그인</button>
        </div>
    </div>
</header>
