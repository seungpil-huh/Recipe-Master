<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<div class="flex flex-col items-center justify-center w-full min-h-screen bg-gray-100 dark:bg-gray-900">
    <div class="max-w-5xl w-full px-4 md:px-6">
        <div class="text-center space-y-4 py-12 md:py-16">
            <h1 class="text-3xl md:text-5xl font-bold text-gray-900 dark:text-gray-100">맛있는 요리를 찾아보세요</h1>
            <p class="text-lg md:text-xl text-gray-600 dark:text-gray-400">다양한 레시피를 검색하고 즐겨보세요</p>
        </div>
        <div class="relative">
            <input
                    class="flex border border-input bg-background py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 w-full h-12 px-4 rounded-md shadow-md focus:outline-none focus:ring-2 focus:ring-primary-500 dark:bg-gray-800 dark:text-gray-100"
                    type="search"
                    placeholder="레시피를 검색하세요"
            />
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="absolute right-4 top-1/2 transform -translate-y-1/2 h-5 w-5 text-gray-500 dark:text-gray-400"
            >
                <circle cx="11" cy="11" r="8"></circle>
                <path d="m21 21-4.3-4.3"></path>
            </svg>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6 mt-8">
            <div class="rounded-lg border bg-card text-card-foreground shadow-sm" data-v0-t="card">
                <img
                        src="/placeholder.svg"
                        alt="Recipe 1"
                        width="400"
                        height="300"
                        class="rounded-t-md w-full h-48 object-cover"
                        style="aspect-ratio:400/300;object-fit:cover"
                />
                <div class="p-4">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-gray-100">파스타 알리오 올리오</h3>
                    <p class="text-gray-600 dark:text-gray-400 mt-2">간단하지만 맛있는 파스타 요리</p>
                    <button class="inline-flex items-center justify-center whitespace-nowrap text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-9 rounded-md px-3 mt-4">
                        자세히 보기
                    </button>
                </div>
            </div>
            <div class="rounded-lg border bg-card text-card-foreground shadow-sm" data-v0-t="card">
                <img
                        src="/placeholder.svg"
                        alt="Recipe 2"
                        width="400"
                        height="300"
                        class="rounded-t-md w-full h-48 object-cover"
                        style="aspect-ratio:400/300;object-fit:cover"
                />
                <div class="p-4">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-gray-100">치킨 텐더 샐러드</h3>
                    <p class="text-gray-600 dark:text-gray-400 mt-2">건강한 치킨 샐러드 레시피</p>
                    <button class="inline-flex items-center justify-center whitespace-nowrap text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-9 rounded-md px-3 mt-4">
                        자세히 보기
                    </button>
                </div>
            </div>
            <div class="rounded-lg border bg-card text-card-foreground shadow-sm" data-v0-t="card">
                <img
                        src="/placeholder.svg"
                        alt="Recipe 3"
                        width="400"
                        height="300"
                        class="rounded-t-md w-full h-48 object-cover"
                        style="aspect-ratio:400/300;object-fit:cover"
                />
                <div class="p-4">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-gray-100">갈비찜</h3>
                    <p class="text-gray-600 dark:text-gray-400 mt-2">부드러운 갈비찜 레시피</p>
                    <button class="inline-flex items-center justify-center whitespace-nowrap text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-9 rounded-md px-3 mt-4">
                        자세히 보기
                    </button>
                </div>
            </div>
            <div class="rounded-lg border bg-card text-card-foreground shadow-sm" data-v0-t="card">
                <img
                        src="/placeholder.svg"
                        alt="Recipe 4"
                        width="400"
                        height="300"
                        class="rounded-t-md w-full h-48 object-cover"
                        style="aspect-ratio:400/300;object-fit:cover"
                />
                <div class="p-4">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-gray-100">김치볶음밥</h3>
                    <p class="text-gray-600 dark:text-gray-400 mt-2">맛있는 김치볶음밥 레시피</p>
                    <button class="inline-flex items-center justify-center whitespace-nowrap text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-9 rounded-md px-3 mt-4">
                        자세히 보기
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function (){
        $.ajax({
            url:"board/getstartlist",
            dataType:"json",

        })
    })
</script>