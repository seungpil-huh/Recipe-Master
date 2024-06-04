<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.tailwindcss.com"></script>

<script type="text/javascript">
   let jungbok=false;

   $(function(){
      $("#myfile").change(function(){
         //console.log($(this)[0]);//type 이 file 인경우 배열타입으로 넘어온다
         let reg=/(.*?)\/(jpg|jpeg|png|gif)$/;
         let f=$(this)[0].files[0];
         if(!f.type.match(reg)){
            alert("이미지 파일만 가능합니다");
            return;
         }
         if(f){
            let reader=new FileReader();
            reader.onload=function(e){
               $("#showimg1").attr("src",e.target.result);
            }
            reader.readAsDataURL($(this)[0].files[0]);
         }
      });

      //중복버튼 이벤트
      $("#btncheckid").click(function(){
         if($("#myid").val()==''){
            alert("가입할 아이디를 입력해주세요");
            return;
         }

         $.ajax({
            type:"get",
            dataType:"json",
            url:"./idcheck",
            data:{"searchid":$("#myid").val()},
            success:function(data){
               if(data.count==0){
                  alert("가입 가능한 아이디입니다");
                  jungbok=true;
               }else{
                  alert("이미 가입되어있는 아이디입니다");
                  jungbok=false;
                  $("#myid").val("");
               }
            }
         });
      });

      //아이디를 입력시 다시 중복확인을 누르도록 중복변수를 초기화
      $("#myid").keyup(function(){
         jungbok=false;
      });
   });  //close function


   function check()
   {
      if(!jungbok){
         alert("아이디 중복확인을 해주세요");
         return false;//false반환시 action 실행을 안함
      }
   }
</script>

<div class="mx-auto max-w-[400px] space-y-6">
   <div class="space-y-2 text-center">
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
                 placeholder="홍길동"
                 required=""
         />
      </div>
      <div class="space-y-2">
         <label
                 class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                 for="username"
         >
            아이디
         </label>
         <div class="flex gap-2">
            <input
                    class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                    id="username"
                    placeholder="사용자 아이디"
                    required=""
            />
            <button class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2">
               중복확인
            </button>
         </div>
      </div>
      <div class="space-y-2">
         <label
                 class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                 for="password"
         >
            비밀번호
         </label>
         <input
                 class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                 id="password"
                 required=""
                 type="password"
         />
      </div>
      <div class="space-y-2">
         <label
                 class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                 for="photo"
         >
            프로필 사진
         </label>
         <input
                 class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                 id="photo"
                 accept="image/*"
                 type="file"
         />
      </div>
      <div class="space-y-2">
         <label
                 class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                 for="phone"
         >
            핸드폰 번호
         </label>
         <input
                 class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                 id="phone"
                 placeholder="010-1234-5678"
                 required=""
         />
      </div>
      <div class="flex items-center space-x-2">
         <button
                 type="button"
                 role="checkbox"
                 aria-checked="false"
                 data-state="unchecked"
                 value="on"
                 class="peer h-4 w-4 shrink-0 rounded-sm border border-primary ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-primary data-[state=checked]:text-primary-foreground"
                 id="chef"
         ></button>
         <label
                 class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                 for="chef"
         >
            전문셰프
         </label>
      </div>
      <div class="flex items-center space-x-2">
         <button
                 type="button"
                 role="checkbox"
                 aria-checked="false"
                 data-state="unchecked"
                 value="on"
                 class="peer h-4 w-4 shrink-0 rounded-sm border border-primary ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-primary data-[state=checked]:text-primary-foreground"
                 id="admin"
         ></button>
         <label
                 class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                 for="admin"
         >
            관리자
         </label>
      </div>
      <div class="flex gap-4">
         <button
                 class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2 w-full"
                 type="submit"
         ></button>
      </div>
   </div>
</div>
