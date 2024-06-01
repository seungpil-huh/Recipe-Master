const mysidebar = document.querySelector("nav.sidebar");
const toggleBtn = document.querySelector(".toggle-btn");


$(".submenu").hide();
toggleBtn.addEventListener("click", function () {
    mysidebar.classList.toggle("active");
    $(".submenu").slideUp();
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