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
        <a href="/admin" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-lg"><b>Thanh Dat</b></span>
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
        <!-- Main content -->
        <section class="content">
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                    <tr>
                        <td colspan="1">
                            <h2>Tin Tức </h2> <spring:url value="/tintuc/save"
                                                              var="saveURL" />
                            <fieldset>
                                <form:form modelAttribute="tintuc" method="POST" onsubmit="return validateImage()"
                                           action="${saveURL}" cssClass="well form-horizontal" enctype="multipart/form-data">

                                    <div class="form-group" style="display: none">
                                        <label class="control-label col-sm-2 requiredField">
                                            ID  <span class="asteriskField"> * </span>
                                        </label>
                                        <c:choose>
                                            <c:when test="${not empty tintuc.idTinTuc }">
                                                <div class="col-md-8 inputGroupContainer">
                                                    <div class="input-group">
																<span class="input-group-addon"><i
                                                                        class="glyphicon glyphicon-user"></i></span>
                                                        <form:input path="idTinTuc" cssClass="form-control"
                                                                    required="true" readonly="true" />
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="col-md-8 inputGroupContainer">
                                                    <div class="input-group">
																<span class="input-group-addon"><i
                                                                        class="glyphicon glyphicon-user"></i></span>
                                                        <form:input path="idTinTuc" required="true"
                                                                    cssClass="form-control" readonly="true" />
                                                    </div>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <c:choose>
                                    <c:when test="${not empty menu.title }">
                                        <div class="form-group">
                                            <label class="control-label col-sm-2 requiredField">
                                                Tiêu đề <span class="asteriskField"> *</span>
                                            </label>
                                            <div class="col-md-8 inputGroupContainer">
                                                <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                    <form:input path="title" id="title"
                                                                placeholder="title" class="form-control"
                                                                required="true" type="text"></form:input>
                                                </div>
                                            </div>
                                        </div>
                                    </c:when>
                                        <c:otherwise>
                                            <div class="form-group">
                                                <label class="control-label col-sm-2 requiredField">
                                                    Tiêu đề <span class="asteriskField"> *</span>
                                                </label>
                                                <div class="col-md-8 inputGroupContainer">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                        <form:input path="title" id="title"
                                                                    placeholder="title" class="form-control"
                                                                    required="true" type="text" require="true"></form:input>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>

                                   
                                            
                                    <div class="form-group">
                                        <label class="control-label col-sm-2 requiredField">
                                            Mô tả
                                        </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                <form:input path="description" id="description"
                                                            placeholder="description" class="form-control"
                                                            required="true" type="text"></form:input>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2 requiredField">
                                           Ngày viết
                                        </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                            <span class="input-group-addon"><i
                                                                    class="glyphicon glyphicon-list-alt"></i></span>
                                                <form:input path="date" id="date"
                                                            placeholder="date" class="form-control"
                                                            type="text"></form:input>
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
                                                <c:if test="${tintuc.photo != null}">
                                                    <img src="/user-photos/${tintuc.photo}" width="150px" height="100px" style="margin-left: 16px;margin-top: 5px" id="imageShow">
                                                </c:if>
                                                <p style="margin-left: 16px;margin-top: 5px" id="plogoImageShow" class="hidden">
                                                    <img id="logoImageShow" alt="ảnh xem trước của logo">
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                        <a type="button" class="btn btn-primary" href="/tintuc/list"
                                           onclick="return confirm('Bạn chắc chắn muốn ngừng thực hiện tác vụ không ?')">Cancel</a>
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
                alert("Bạn chưa chọn ảnh cho item !");
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