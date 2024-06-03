const mysidebar = document.querySelector("nav.sidebar");
const toggleBtn = document.querySelector(".toggle-btn");

$(".submenu").hide();
toggleBtn.addEventListener("click", function () {
    mysidebar.classList.toggle("active");
    if (!mysidebar.classList.contains("active")) {
        setTimeout(() => {
            $(".submenu").slideUp();
        }, 500);  // 트랜지션이 끝나는 시간에 맞춰 조정
    }
});

$(document).ready(function () {
    $("nav.sidebar>ul.list>li.list-item>a").click(function (e) {
        e.preventDefault();
        let p = $("nav.sidebar").css("--p");
        if (parseInt(p) === 5) {
            $(this).siblings("ul.submenu").slideToggle();
            $(this).parent().siblings().find("ul.submenu").slideUp();
        }
    });
});
