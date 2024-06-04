<%--
  Created by IntelliJ IDEA.
  User: DONGWOOBAE
  Date: 2024-06-04
  Time: 오후 4:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${prolist.size()==0 and userlist.size()==0}">
    <h1>리뷰를 작성한 글이 없습니다</h1>
</c:if>
<c:if test="${prolist.size() > 0 or userlist.size() > 0}">

</c:if>