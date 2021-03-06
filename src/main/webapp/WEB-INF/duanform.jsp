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
    <title>Save</title>
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
    </style>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="/welcome" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>D</b>T</span> <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Thanh Dat</b></span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas"
               role="button"> <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
                                                       data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
                            class="label label-success">4</span>
                    </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the messages -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message --> <a href="#">
                                        <div class="pull-left">
                                            <!-- User Image -->
                                            <img src="${contextPath}/resources/dist/img/avatar5.png" class="img-circle"
                                                 alt="User Image">
                                        </div> <!-- Message title and timestamp -->
                                        <h4>
                                            Support Team <small><i class="fa fa-clock-o"></i> 5
                                            mins</small>
                                        </h4> <!-- The message -->
                                        <p>Why not buy a new awesome theme?</p>
                                    </a>
                                    </li>
                                    <!-- end message -->
                                </ul> <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->

                    <!-- Notifications Menu -->
                    <li class="dropdown notifications-menu">
                        <!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
                                                       data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
                            class="label label-warning">10</span>
                    </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- Inner Menu: contains the notifications -->
                                <ul class="menu">
                                    <li>
                                        <!-- start notification --> <a href="#"> <i
                                            class="fa fa-users text-aqua"></i> 5 new members joined
                                        today
                                    </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks Menu -->
                    <li class="dropdown tasks-menu">
                        <!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
                                                       data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
                            class="label label-danger">9</span>
                    </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li>
                                        <!-- Task item --> <a href="#"> <!-- Task title and progress text -->
                                        <h3>
                                            Design some buttons <small class="pull-right">20%</small>
                                        </h3> <!-- The progress bar -->
                                        <div class="progress xs">
                                            <!-- Change the css width attribute to simulate progress -->
                                            <div class="progress-bar progress-bar-aqua"
                                                 style="width: 20%" role="progressbar" aria-valuenow="20"
                                                 aria-valuemin="0" aria-valuemax="100">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all tasks</a></li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
                                                       data-toggle="dropdown"> <!-- The user image in the navbar-->
                        <img src="${contextPath}/resources/dist/img/avatar5.png" class="user-image" alt="User Image">
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">${pageContext.request.userPrincipal.name}</span>
                    </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header"><img src="${contextPath}/resources/dist/img/avatar5.png"
                                                         class="img-circle" alt="User Image">

                                <p>
                                    ${pageContext.request.userPrincipal.name} - Web Developer <small>Member since Nov.
                                    2019</small>
                                </p></li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div> <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <form action="${contextPath}/logout" method="get">
                                        <button class="btn btn-md btn-danger btn-block"
                                                name="registration" type="Submit">Logout</button>
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li><a href="#" data-toggle="control-sidebar"><i
                            class="fa fa-gears"></i></a></li>
                </ul>
            </div>
        </nav>
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
                        class="glyphicon glyphicon-home"></i> <span>Qu???n L?? Nh??n S???</span></a></li>
                <li class="active"><a href="/tintuc/list"><i
                        class="glyphicon glyphicon-lock"></i> <span>Qu???n L?? Tin T???c
								</span></a></li>
                <li class="active"><a class="" href="/duan/list"><i
                        class="glyphicon glyphicon-home"></i> <span>Qu???n L?? D??? ??n
								</span></a></li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Thanh Dat
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                    <tr>
                        <td colspan="1"><img alt="this is logo"
                                             src="${contextPath}/resources/dist/img/background2.jpg" style="width: 30%;margin-left: 30%; display: block;">
                            <h2>D??? ??n </h2> <spring:url value="/duan/save"
                                                              var="saveURL" />
                            <fieldset>
                                <form:form modelAttribute="duan" method="POST" onsubmit="return validateImage()"
                                           action="${saveURL}" cssClass="well form-horizontal" enctype="multipart/form-data">

                                    <div class="form-group" style="display: none">
                                        <label class="control-label col-sm-2 requiredField">
                                            ID  <span class="asteriskField"> * </span>
                                        </label>
                                        <c:choose>
                                            <c:when test="${not empty duan.idDuAn }">
                                                <div class="col-md-8 inputGroupContainer">
                                                    <div class="input-group">
																<span class="input-group-addon"><i
                                                                        class="glyphicon glyphicon-user"></i></span>
                                                        <form:input path="idDuAn" cssClass="form-control"
                                                                    required="required" readonly="true" />
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="col-md-8 inputGroupContainer">
                                                    <div class="input-group">
																<span class="input-group-addon"><i
                                                                        class="glyphicon glyphicon-user"></i></span>
                                                        <form:input id="idDuAn" path="idDuAn"
                                                                    cssClass="form-control" readonly="true" />
                                                    </div>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-2 requiredField">
                                                    T??n D??? ??n <span class="asteriskField"> *</span>
                                                </label>
                                                <div class="col-md-8 inputGroupContainer">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                        <form:input path="name" id="name"
                                                                    placeholder="name" class="form-control"
                                                                    required="true" type="text" require="true"></form:input>
                                                    </div>
                                                </div>
                                            </div>                                        
                                    <div class="form-group">
                                        <label class="control-label col-sm-2 requiredField">
                                            ?????a ch???
                                        </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                <form:input path="address" id="adress"
                                                            placeholder="Address" class="form-control"
                                                            required="true" type="text"></form:input>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2 requiredField">
                                           Ng??y ho??n th??nh
                                        </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                <form:input path="endDate" id="endDate"
                                                            placeholder="End date" class="form-control"
                                                            type="text"></form:input>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-2 requiredField">
                                            M?? t???<span class="asteriskField"> *</span>
                                        </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
														<span class="input-group-addon"><i
                                                                class="glyphicon glyphicon-list-alt"></i></span>
                                                <form:textarea path="description"
                                                            placeholder="Description" class="form-control" rows="6"
                                                            type="text"></form:textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2 requiredField">
                                            Photo <span class="asteriskField"> *</span>
                                        </label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input name="photo" path="photo" type="file" class="custom-file-input" require="true" style="margin-left: 16px" onchange="readURL(this)"/>
                                                <c:if test="${duan.photo != null}">
                                                    <img src="/user-photos/${duan.photo}" width="150px" height="100px" style="margin-left: 16px;margin-top: 5px" id="imageShow">
                                                </c:if>
                                                <p style="margin-left: 16px;margin-top: 5px" id="plogoImageShow" class="hidden">
                                                    <img id="logoImageShow" alt="???nh xem tr?????c c???a logo">
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                        <a type="button" class="btn btn-primary" href="/duan/list"
                                           onclick="return confirm('B???n ch???c ch???n mu???n ng???ng th???c hi???n t??c v??? kh??ng ?')">Cancel</a>
                                    </div>

                                </form:form>
                            </fieldset></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>


        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">TD </div>
        <!-- Default to the left -->
        <strong>Admin <a href="#">PRO</a>
        </strong>
    </footer>

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
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>

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
<script>

</script>
<!-- REQUIRED JS SCRIPTS -->
<script>
    function readURL(input) {
        document.getElementById("plogoImageShow").classList.remove('hidden');
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#logoImageShow')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(100);
            };

            reader.readAsDataURL(input.files[0]);
        }
        document.getElementById("imageShow").classList.add('hidden');
    }
    function validateImage() {
        var image = document.getElementById("imageFile");
        var imageShow = document.getElementById("imageShow");

        if(null == imageShow){
            if (image.files.length == 0){
                alert("B???n ch??a ch???n ???nh cho item !");
                return false;
            }else{
                return true;
            }
        }
    }
</script>
<!-- jQuery 2.2.0 -->
<script src="${contextPath}/resources/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${contextPath}/resources/dist/js/app.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</body>
</html>