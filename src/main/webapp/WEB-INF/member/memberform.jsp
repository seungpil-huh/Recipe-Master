<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.tailwindcss.com"></script>

<script type="text/javascript">
    let jungbok = false;

    $(function(){
        $("#myfile").change(function(){
            //console.log($(this)[0]);//type 이 file 인경우 배열타입으로 넘어온다
            let reg = /(.*?)\/(jpg|jpeg|png|gif)$/;
            let f = $(this)[0].files[0];
            if(!f.type.match(reg)){
                alert("이미지 파일만 가능합니다");
                return;
            }
            if(f){
                let reader = new FileReader();
                reader.onload = function(e){
                    $("#showimg1").attr("src", e.target.result);
                }
                reader.readAsDataURL($(this)[0].files[0]);
            }
        });

        //중복버튼 이벤트
        $("#btncheckid").click(function(){
            if($("#myid").val() == ''){
                alert("가입할 아이디를 입력해주세요");
                return;
            }

            $.ajax({
                type: "get",
                dataType: "json",
                url: "./idcheck",
                data: {"searchid": $("#myid").val()},
                success: function(data){
                    if(data.count == 0){
                        alert("가입 가능한 아이디입니다");
                        jungbok = true;
                    } else {
                        alert("이미 가입되어있는 아이디입니다");
                        jungbok = false;
                        $("#myid").val("");
                    }
                }
            });
        });

        //아이디를 입력시 다시 중복확인을 누르도록 중복변수를 초기화
        $("#myid").keyup(function(){
            jungbok = false;
        });
    });  //close function


    function check()
    {
        if(!jungbok){
            alert("아이디 중복확인을 해주세요");
            return false; //false 반환시 action 실행을 안함
        }
    }
</script>

<div class="memberForm">
    <div class="mx-auto max-w-[400px] space-y-6">
        <div class="space-y-2 text-center">
            <form action="/member/insert" onsubmit="return check();" method="post" enctype="multipart/form-data">
                <h1 class="text-3xl font-bold">회원가입</h1>
                <p class="text-gray-500 dark:text-gray-400">회원 정보를 입력해주세요</p>
        </div>
        <div class="space-y-4">
            <div class="space-y-2">
                <label
                        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                        for="name"
                >
                    이름
                </label>
                <input
                        class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        id="name"
                        placeholder="이름을 적어주세요"
                        required=""
                />
            </div>
            <div class="space-y-2">
                <label
                        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                        for="myid"
                >
                    아이디
                </label>
                <div class="flex gap-2">
                    <input
                            class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                            id="myid"
                            placeholder="아이디를 입력하세요"
                            required=""
                    />
                    <button type="button" id="btncheckid" class="check-id inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 h-10 px-4 py-2">
                        중복확인
                    </button>
                </div>
            </div>
            <div class="space-y-2">
                <label
                        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                        for="passwd"
                >
                    비밀번호
                </label>
                <input
                        class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        id="passwd"
                        required=""
                        type="password"
                />
            </div>
            <div class="space-y-2">
                <label
                        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                        for="myfile"
                >
                    프로필 사진
                </label>
                <input
                        class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        id="myfile"
                        name="myfile"
                        accept="image/*"
                        type="file"
                />
                <c:set var="root" value="<%=request.getContextPath()%>"/>
                <img id="showimg1" src="" class="mt-4 w-24 h-24 object-cover rounded-full" onerror="this.src='../image/noimage1.png'"/>
            </div>
            <div class="space-y-2">
                <label
                        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                        for="hp"
                >
                    핸드폰 번호
                </label>
                <input
                        class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        id="hp"
                        pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                        placeholder="xxx-xxxx-xxxx"
                        required=""
                />
            </div>
            <div class="flex items-center space-x-2 checkbox-container">
                <input
                        type="checkbox"
                        id="chef"
                        value="on"
                />
                <label
                        for="chef"
                ></label>
                <span class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
            전문셰프
         </span>
            </div>
            <div class="flex items-center space-x-2 checkbox-container">
                <input
                        type="checkbox"
                        id="admin"
                        value="on"
                />
                <label
                        for="admin"
                ></label>
                <span class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
            관리자
         </span>
            </div>
            <div class="flex gap-4">
                <button
                        class="submit-form inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 h-10 px-4 py-2 w-full"
                        type="submit" id="memberformSubmit"
                >
                    회원가입
                </button>
                <button class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full"
                        type="reset">
                    초기화
                </button>
            </div>
            </form>
        </div>
    </div>
</div>
