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
                    id="searchText"
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
                    id="searchRecipe"
            >
                <circle cx="11" cy="11" r="8"></circle>
                <path d="m21 21-4.3-4.3"></path>
            </svg>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6 mt-8">
        </div>
    </div>
</div>
<div class="grid gap-4 grid-cols-3 grid-rows-3">
    <div class="mainUiButtons">
    <i class='bx bxs-up-arrow' id="mainScrollTop"></i>
    <i class='bx bx-search-alt' id="mainLoadSearch"></i>
    </div>
</div>
<i class='bx bx-loader-alt' id="mainLoadingData" style="font-size: 50px"></i>
<script>
    function dataAdd(){
        $.ajax({
            url:"/board/getstartlist",
            dataType:"json",
            type:"get",
            success:function (data){
                let s="";
                $.each(data.prolist,function (idx,ele){

                    s+=`
                    <div class="rounded-lg border bg-card text-card-foreground shadow-sm" data-v0-t="card">
                <img
                        src="\${ele.att_FILE_NO_MAIN}"
                        alt="Recipe \${idx+1}"
                        width="400"
                        height="300"
                        class="rounded-t-md w-full h-48 object-cover"
                        style="aspect-ratio:400/300;object-fit:cover"
                />
                <div class="p-4">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-gray-100">\${ele.rcp_NM}</h3>
                    <p class="text-gray-600 dark:text-gray-400 mt-2">\${ele.info_ENG} kcal</p>
                    <button class="inline-flex items-center justify-center whitespace-nowrap text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-9 rounded-md px-3 mt-4">
                        자세히 보기
                    </button>
                </div>
            </div>
                    `;
                });
                $.each(data.userlist,function (idx,ele){
                    s+=`
                        <div class="rounded-lg border bg-card text-card-foreground shadow-sm" data-v0-t="card">
                <img
                        src="\${ele.image}"
                        alt="Recipe 4"
                        width="400"
                        height="300"
                        class="rounded-t-md w-full h-48 object-cover"
                        style="aspect-ratio:400/300;object-fit:cover"
                />
                <div class="p-4">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-gray-100">\${ele.title}</h3>
                    <p class="text-gray-600 dark:text-gray-400 mt-2">\${ele.description}</p>
                    <button class="inline-flex items-center justify-center whitespace-nowrap text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-9 rounded-md px-3 mt-4">
                        자세히 보기
                    </button>
                </div>
            </div>
                    `
                });
                $("div.grid.grid-cols-1.sm\\:grid-cols-2.md\\:grid-cols-3.lg\\:grid-cols-4.gap-6.mt-8").append(s);
            }
        });//getstartlist end
    }
    $(function (){
        $("#mainLoadingData").hide();
        dataAdd();
    });
    let timeoutLoading=null;
    window.addEventListener("scroll", () => {
        clearTimeout(timeoutLoading);
        let dataloading = false;

        const isScrollEnded = window.innerHeight + window.scrollY + 100 >= document.body.offsetHeight;

        if (isScrollEnded && !dataloading) {
            $("#mainLoadingData").show(); // 로딩 아이콘 표시

            timeoutLoading = setTimeout(() => {
                dataAdd();
                $("#mainLoadingData").hide(); // 데이터 추가 후 로딩 아이콘 숨김
                dataloading = false;
            }, 500);

            dataloading = true;
        }
    });
    $("#mainScrollTop").click(function (){
        $('html, body').animate({
            scrollTop: 0
        }, 500);
    });
    $("#mainLoadSearch").click(function (){
        $("div.relative").toggleClass("fixed-position");
        if ($("div.relative").hasClass("fixed-position")) {
            $("div.relative").animate({
                top:20 // 변경할 스타일 값
            }, 500); // 지속시간 (0.5초)
        } else {
            $("div.relative").animate({
                top:-50 // 변경할 스타일 값
            }, 500); // 지속시간 (0.5초)
        }
    })
    $("#searchRecipe").click(function (){
        let val=$("#searchText").val().trim();

        $.ajax({
            type: "get",
            dataType: "json",
            data:{"search":val},


        })
    })



</script>