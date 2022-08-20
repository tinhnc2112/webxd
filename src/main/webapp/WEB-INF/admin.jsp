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
    <title>ADMIN</title>
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
    <link rel="stylesheet" href="../../resources/dist/css/AdminLTE.min.css">
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
    <link href="../static/css/style.css"
          rel="stylesheet" />
    <script src="/js/checkValidate.js"></script>
    <style type="text/css">
        .asteriskField {
            color: red;
        }
    </style>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="/admin" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-lg"><b>Thành Đạt TK</b> </span>
        </a>
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
                        class="glyphicon glyphicon-lock"></i> <span>Quản Lý Nhân Sự</span></a></li>
                <li class="active"><a href="/tintuc/list"><i
                        class="glyphicon glyphicon-lock"></i> <span>Quản Lý Tin Tức
								</span></a></li>
                <li class="active"><a class="" href="/duan/list"><i
                        class="glyphicon glyphicon-lock"></i> <span>Quản Lý Dự Án
								</span></a></li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <!-- Main content -->
        <section class="content">
            <img alt="this is logo"
                 src="${contextPath}/resources/img/hero-bg.jpg"
                 style="width: 100%;">
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