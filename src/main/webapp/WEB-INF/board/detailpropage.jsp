<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div style="margin-left: 80px">
    <div class="w-full">
        <section class="w-full py-12 md:py-24 lg:py-32 bg-gray-100 dark:bg-gray-800">
            <div class="container grid items-center justify-center gap-8 px-4 md:px-6">
                <div class="grid gap-4">
                    <h1 class="text-3xl font-bold tracking-tighter sm:text-5xl"></h1>
                    <p class="text-2xl font-bold">
                        ${boarddto.RCP_NM}
                    </p>
                </div>
                <img
                        src="${boarddto.ATT_FILE_NO_MK}"
                        width="800"
                        height="500"
                        alt="${boarddto.RCP_PAT2}"
                />
            </div>
        </section>
        <section class="w-full py-12 md:py-24 lg:py-32">
            <div class="container grid gap-8 px-4 md:px-6">
                <div class="grid gap-4">
                    <h2 class="text-2xl font-bold">재료</h2>
                    <p>${boarddto.RCP_PARTS_DTLS}</p>
                </div>
            </div>
        </section>
        <section class="w-full py-12 md:py-24 lg:py-32 bg-gray-100 dark:bg-gray-800">
            <div class="container grid gap-8 px-4 md:px-6">
                <div class="grid gap-4">
                    <h2 class="text-2xl font-bold">조리 과정</h2>
                    <ol class="grid gap-4">
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">1</div>
                                <p>
                                    ${boarddto.MANUAL01}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">1</div>
                                <p>
                                    <img src="${boarddto.MANUAL_IMG01}"
                                         width="800"
                                         height="500"
                                         alt="${boarddto.MANUAL01}"
                                         class="rounded-lg object-cover w-full aspect-[16/9]"
                                    />
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">2</div>
                                <p>
                                    ${boarddto.MANUAL02}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">2</div>
                                <p>
                                    <img src="${boarddto.MANUAL_IMG02}"
                                         width="800"
                                         height="500"
                                         alt="${boarddto.MANUAL02}"
                                         class="rounded-lg object-cover w-full aspect-[16/9]"
                                    />
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">3</div>
                                <p>
                                    ${boarddto.MANUAL03}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">3</div>
                                <p>
                                    <img src="${boarddto.MANUAL_IMG03}"
                                         width="800"
                                         height="500"
                                         alt="${boarddto.MANUAL03}"
                                         class="rounded-lg object-cover w-full aspect-[16/9]"
                                    />
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">4</div>
                                <p>
                                    ${boarddto.MANUAL04}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">4</div>
                                <p>
                                    <img src="${boarddto.MANUAL_IMG04}"
                                         width="800"
                                         height="500"
                                         alt="${boarddto.MANUAL04}"
                                         class="rounded-lg object-cover w-full aspect-[16/9]"
                                    />
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">5</div>
                                <p>
                                    ${boarddto.MANUAL05}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">5</div>
                                <p>
                                    <img src="${boarddto.MANUAL_IMG05}"
                                         width="800"
                                         height="500"
                                         alt="${boarddto.MANUAL05}"
                                         class="rounded-lg object-cover w-full aspect-[16/9]"
                                    />
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">6</div>
                                <p>
                                    ${boarddto.MANUAL06}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-start gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">6</div>
                                <p>
                                    <img src="${boarddto.MANUAL_IMG06}"
                                         width="800"
                                         height="500"
                                         alt="${boarddto.MANUAL06}"
                                         class="rounded-lg object-cover w-full aspect-[16/9]"
                                    />
                                </p>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
        </section>
        <section class="w-full py-12 md:py-24 lg:py-32">
            <div class="container grid gap-8 px-4 md:px-6">
                <div class="grid gap-4">
                    <h2 class="text-2xl font-bold">영양 성분</h2>
                    <div class="grid grid-cols-2 sm:grid-cols-5 gap-4">
                        <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                            <h3 class="text-lg font-bold">칼로리</h3>
                            <p class="text-4xl font-bold">${boarddto.INFO_ENG}</p>
                        </div>
                        <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                            <h3 class="text-lg font-bold">지방</h3>
                            <p class="text-4xl font-bold">${boarddto.INFO_FAT}</p>
                        </div>
                        <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                            <h3 class="text-lg font-bold">탄수화물</h3>
                            <p class="text-4xl font-bold">${boarddto.INFO_CAR}</p>
                        </div>
                        <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                            <h3 class="text-lg font-bold">단백질</h3>
                            <p class="text-4xl font-bold">${boarddto.INFO_PRO}</p>
                        </div>
                        <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                            <h3 class="text-lg font-bold">나트륨</h3>
                            <p class="text-4xl font-bold">${boarddto.INFO_NA}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="w-full py-12 md:py-24 lg:py-32 bg-gray-100 dark:bg-gray-800">
            <div class="container grid gap-8 px-4 md:px-6">
                <div class="grid gap-4">
                    <h2 class="text-2xl font-bold">리뷰</h2>
<c:if test="${sessionScope.loginok!=null}">
                    <!-- 리뷰 폼 -->
                    <form action="/board/addReview" method="post">
                        <input type="hidden" name="ridx" value="${boarddto.ridx}">
                        <input type="hidden" name="user_id" value="${sessionScope.loginid}">
                        <div class="mb-4">
                            <label for="rating" class="block text-sm font-medium text-gray-700">평점</label>
                            <select name="rating" id="rating" required class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <div class="mb-4">
                            <label for="comment" class="block text-sm font-medium text-gray-700">댓글</label>
                            <textarea name="comment" id="comment" rows="4" required class="shadow-sm focus:ring-indigo-500 focus:border-indigo-500 mt-1 block w-full sm:text-sm border border-gray-300 rounded-md"></textarea>
                        </div>
                        <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                            리뷰 등록
                        </button>
                    </form>
</c:if>

                    <!-- 리뷰 리스트 -->
                    <c:forEach items="${reviews}" var="review">
                        <div class="bg-white dark:bg-gray-950 rounded-lg p-4 shadow">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center gap-2">
                                    <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">${review.rating}</div>
                                    <div class="flex items-center gap-0.5">
                                        <c:forEach begin="1" end="${review.rating}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-5 h-5 fill-primary">
                                                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                            </svg>
                                        </c:forEach>
                                    </div>
                                </div>
                                <p class="text-sm text-gray-500 dark:text-gray-400">${review.created_at}</p>
                            </div>
                            <p class="mt-2 text-gray-500 dark:text-gray-400">
                                    ${review.comment}
                            </p>
                            <div class="mt-2 flex items-center gap-2">
                                <span class="relative flex shrink-0 overflow-hidden rounded-full h-8 w-8" src="/placeholder-avatar.svg" alt="User Avatar"></span>
                                <span class="text-sm font-medium">${review.user_id}</span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
    </div>
</div>
