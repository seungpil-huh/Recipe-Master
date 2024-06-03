<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div class="mainlayout">
    <div class="header">
        <h1>맛있는 요리를 찾아보세요</h1>
        <p>다양한 레시피를 검색하고 즐겨보세요</p>
    </div>
    <div class="search-bar">
        <input type="text" placeholder="레시피를 검색하세요">
    </div>
    <div class="recipe-list">
        <div class="recipe-card">
            <img src="https://via.placeholder.com/200" alt="Pasta Aglio e Olio">
            <h3>파스타 알리오 올리오</h3>
            <p>간단하지만 맛있는 파스타 요리</p>
            <button>자세히 보기</button>
        </div>
        <div class="recipe-card">
            <img src="https://via.placeholder.com/200" alt="Chicken Tender Salad">
            <h3>치킨 텐더 샐러드</h3>
            <p>건강한 치킨 샐러드 레시피</p>
            <button>자세히 보기</button>
        </div>
        <div class="recipe-card">
            <img src="https://via.placeholder.com/200" alt="Galbijjim">
            <h3>갈비찜</h3>
            <p>부드러운 갈비찜 레시피</p>
            <button>자세히 보기</button>
        </div>
        <div class="recipe-card">
            <img src="https://via.placeholder.com/200" alt="Kimchi Fried Rice">
            <h3>김치볶음밥</h3>
            <p>맛있는 김치볶음밥 레시피</p>
            <button>자세히 보기</button>
        </div>
    </div>
</div>
