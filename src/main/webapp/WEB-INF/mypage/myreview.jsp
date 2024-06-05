<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<c:set var="myid" value="${sessionScope.loginid==null?'':sessionScope.loginid}"/>
<c:if test="${prolist.size()==0 and userlist.size()==0}">
    <h1 class="noReviewAlarm">리뷰를 작성한 글이 없습니다</h1>
</c:if>
<c:if test="${prolist.size() > 0 or userlist.size() > 0}">

    <div style="margin-left: 80px">
        <section class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6 p-4 md:p-6">
            <c:forEach var="prodto" items="${prolist}">
                <div class="relative group overflow-hidden rounded-lg" onclick="location.href='${root}/board/detailpro?ridx=${prodto.ridx}&user_id=${myid}'">
                    <a class="absolute inset-0 z-10" href="#">
                        <span class="sr-only">View recipe</span>
                    </a>
                    <img
                            src="${prodto.ATT_FILE_NO_MAIN}"
                            alt="Creamy Garlic Shrimp"
                            width="400"
                            height="300"
                            class="object-cover w-full h-60"
                            style="aspect-ratio: 400 / 300; object-fit: cover;"
                    />
                    <div class="bg-white p-4 dark:bg-gray-950">
                        <h3 class="font-semibold text-lg md:text-xl">${prodto.RCP_NM}</h3>
                        <div class="flex items-center space-x-1">
                            <c:forEach begin="1" end="${prodto.rating}">
                    <span class="inline-block">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-5 h-5 fill-primary">
                            <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                        </svg>
                    </span>
                            </c:forEach>
                        </div>
                        <p class="text-sm text-gray-500 dark:text-gray-400">${prodto.comment}</p>
                    </div>
                </div>
            </c:forEach>
        </section>
    </div>
</c:if>
