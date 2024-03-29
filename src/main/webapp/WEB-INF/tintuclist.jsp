<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dự án</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
            name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${contextPath}/resources/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
            page. However, you can choose any other skin. Make sure you
            apply the skin class to the body tag so the changes take effect.
      -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/dist/css/skins/skin-blue.min.css">
    <link
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            rel="stylesheet"
            integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
            crossorigin="anonymous" />
    <!-- Custom style -->
    <style type="text/css">
        .asteriskField {
            color: red;
        }
        .img-circle{
            margin-left: 15px;
        }
    </style>
    <style>
        @font-face {
            font-family: "Resamitz";
            src: url("${contextPath}/resources/fonts/Resamitz.otf") format("opentype");
        }
        @font-face {
            font-family: "Catorze 27 Medium";
            src: url("${contextPath}/resources/fonts/Catorze27Medium.otf") format("opentype");
        }
        @font-face {
            font-family: "Catorze 27 Black";
            src: url("${contextPath}/resources/fonts/Catorze27Style1-Black.otf") format("opentype");
        }
    </style>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="/admin" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-lg"><b>Thành Đạt TK</b></span>
        </a>

        <!-- Header Navbar -->
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${contextPath}/resources/dist/img/avatar5.png" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${pageContext.request.userPrincipal.name}</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>

            <!-- search form (Optional) -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control"
                           placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
                                    class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
                </div>
            </form>
            <!-- /.search form -->

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <li class="active"><a class="" href="/nhansu/list"><i
                        class="glyphicon glyphicon-home"></i> <span>Quản Lý Nhân Sự</span></a></li>
                <li class="active"><a href="/tintuc/list"><i
                        class="glyphicon glyphicon-lock"></i> <span>Quản Lý Tin Tức
								</span></a></li>
                <li class="active"><a class="" href="/duan/list"><i
                        class="glyphicon glyphicon-home"></i> <span>Quản Lý Dự Án
								</span></a></li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
<%--        main content--%>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Bản dữ liệu Tin tức</h3>
                        </div>
                        <div class="box-header">
                            <spring:url value="/news-save" var="addURL" />
                            <a class="btn btn-primary" href="${addURL}" role="button"><i
                                    class="glyphicon glyphicon-plus"></i> Thêm tin tức</a>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Tiêu đề</th>
                                    <th>Mô tả</th>
                                    <th>Ngày viết</th>
                                    <th>Ảnh</th>
                                    <th>Hành động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listTinTuc}" var="tintuc" varStatus="s">
                                    <tr>
                                        <td><c:out value="${s.index + 1}" /></td>
                                        <td><c:out value="${tintuc.title}" /></td>
                                        <td><c:out value="${tintuc.description}" /></td>
                                        <td><c:out value="${tintuc.date}"></c:out> </td>                                         
                                        <td><img src="/user-photos/${tintuc.photo}" class="img-circle" alt="User Image" width="150px" height="100px"></td>
                                        <td>
                                            <div style="margin-left: 5px;width: 40%;float: left;">
                                                <spring:url
                                                        value="/tintuc/${tintuc.idTinTuc}/edit" var="editURL" />
                                                <a href="${editURL}" style="font-size: 25px;"><i
                                                        class="glyphicon glyphicon-pencil"></i></a>
                                            </div>
                                            <div style="width: 40%;float: left">
                                            <spring:url value="/tintuc/delete/${tintuc.idTinTuc}" var="deleteURL" /> <a href="${deleteURL}" style="font-size: 25px;"
                                                                      onclick="return confirm('Bạn chắc chắn xoá tin tức này không?');"><i
                                                class="glyphicon glyphicon-trash"></i> </a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
            </div>
        </section>


        <!-- /.content -->

    </div>
    <!-- /.content-wrapper -->
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab"
                                  data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
                    class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li><a href="javascript::;"> <i
                            class="menu-icon fa fa-birthday-cake bg-red"></i>

                        <div class="menu-info">
                            <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                            <p>Will be 23 on April 24th</p>
                        </div>
                    </a></li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li><a href="javascript::;">
                        <h4 class="control-sidebar-subheading">
                            Custom Template Design <span
                                class="label label-danger pull-right">70%</span>
                        </h4>

                        <div class="progress progress-xxs">
                            <div class="progress-bar progress-bar-danger"
                                 style="width: 70%"></div>
                        </div>
                    </a></li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
                Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading"> Report panel
                            usage <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>Some information about this general settings option</p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
   immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.0 -->
<script src="${contextPath}/resources/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${contextPath}/resources/dist/js/app.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
 Both of these plugins are recommended to enhance the
 user experience. Slimscroll is required when using the
 fixed layout. -->
</body>
</html>