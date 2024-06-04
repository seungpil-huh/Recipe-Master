<%--
  Created by IntelliJ IDEA.
  User: DONGWOOBAE
  Date: 2024-06-04
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="loginForm">
<div class="rounded-lg border bg-card text-card-foreground shadow-sm w-full max-w-md" data-v0-t="card" style="background-color: white">
    <div class="flex flex-col p-6 space-y-1">
        <h3 class="whitespace-nowrap font-semibold tracking-tight text-2xl">Login</h3>
        <p class="text-sm text-muted-foreground">Enter your email and password to access your account.</p>
    </div>
    <form id="loginForm">
    <div class="p-6 space-y-4">
        <div class="space-y-2">
            <label
                    class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"

            >
                UserId
            </label>
            <input
                    class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                    name="user_id"
                    required=""
                    type="text"
                    value="${sessionScope.saveid=="yes"?sessionScope.saved_id:''}"
            />
        </div>
        <div class="space-y-2">
            <div class="flex items-center justify-between">
                <label
                        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                        for="password"
                >
                    Password
                </label>
            </div>
            <input
                    class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                    name="passwd"
                    id="password"
                    required=""
                    type="password"
            />
        </div>
        <div class="flex items-center space-x-2">
            <label>
                <input type="checkbox" name="saveid"
                ${sessionScope.saveid==null or sessionScope.saveid=='no'?"":"checked"}>&nbsp;saveid
            </label>
        </div>
        <div style="display: flex;justify-content: center">
            <button type="submit" id="submitLogin" style="margin-right: 50px;">login</button><button type="button">sign up</button>
        </div>
    </div>
    </form>
</div>
</div>
