<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Đăng ký</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/login.css" rel="stylesheet">
  </head>

  <body>

<%--    <div class="container">--%>
        <div id="bg">
        </div>
        <form:form method="POST" modelAttribute="userForm" class="form-field">
            <div class="form-heading">
                <h2>Create account</h2>
            </div>
            <spring:bind path="username">
                <div class="form-field ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-field ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-field ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            <div class="form-field">
                <button class="btn" type="submit">Create</button>
            </div>

        </form:form>
<%--        --%>
<%--    </div>--%>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>
