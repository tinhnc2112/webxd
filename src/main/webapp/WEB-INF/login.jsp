<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Đăng nhập</title>

      <!-- <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"> -->
      <!-- <link href="${contextPath}/resources/css/common.css" rel="stylesheet"> -->
     <link href="${contextPath}/resources/css/login.css" rel="stylesheet">

  </head>

<%--  <body style="background-color: #666666;">--%>
<%--    <div class="limiter">--%>
<%--        <div class="container-login100">--%>
<%--            <div class="wrap-login100">--%>
<%--                <form class="login100-form validate-form" method="POST" action="${contextPath}/login">--%>
<%--					<span class="login100-form-title p-b-43">--%>
<%--						Đăng nhập--%>
<%--					</span>--%>

<%--                    <div class="wrap-input100 validate-input">--%>
<%--                        <input name="username" type="text" class="input100" placeholder="Username"--%>
<%--                               autofocus="true">--%>
<%--                        <span class="focus-input100"></span>--%>
<%--                        <span>${message}</span>--%>
<%--                    </div>--%>

<%--                    <div class="wrap-input100 validate-input" data-validate="Password is required">--%>
<%--                        <input class="input100" name="password" type="password" placeholder="Password">--%>
<%--                        <span class="focus-input100"></span>--%>
<%--                        <span>${error}</span>--%>
<%--                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
<%--                    </div>--%>

<%--                    <div class="flex-sb-m w-full p-t-3 p-b-32">--%>
<%--                        <div class="contact100-form-checkbox">--%>
<%--                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">--%>
<%--                            <label class="label-checkbox100" for="ckb1">--%>
<%--                                Remember me--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="container-login100-form-btn">--%>
<%--                        <button class="login100-form-btn" type="submit">--%>
<%--                            Login--%>
<%--                        </button>--%>
<%--                    </div>--%>

<%--                    <div class="text-center p-t-46 p-b-20">--%>
<%--                        <a class="txt2" href="${contextPath}/registration">Create an account</a>--%>
<%--                    </div>--%>
<%--                </form>--%>

<%--                <div class="login100-more" style="background-image: url('https://2.bp.blogspot.com/-yvXzw4d-a0Q/VMFPE2-Ae_I/AAAAAAAAVa8/OMqBmolf_To/s1600/Hinh-nen-powerpoint-cong-nghe-thong-tin%2B(11).jpg');">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--  ===================  --%>
    <body>
    <!-- partial:index.partial.html -->
    <div id="bg">
    </div>

    <form method="POST" action="${contextPath}/login">
        <div class="form-heading">
            <h2>Login</h2>
        </div>
        <div class="form-field">
            <input name="username" type="text" placeholder="Username"
                   autofocus="true">
            <span class="focus-input100"></span>
            <span>${message}</span>
        </div>

        <div class="form-field">
            <input name="password" type="password" placeholder="Password" required="">
            <span class="focus-input100"></span>

        </div>
        <div class="form-field form-invalid">
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>

        <div class="form-field">
            <button class="btn" type="submit">Log in</button>
        </div>
        <div class="form-footer">
            <a class="create" href="${contextPath}/registration">Create an account</a>
        </div>
    </form>
    <!-- partial -->


    </body>
</html>



