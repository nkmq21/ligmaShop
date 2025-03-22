<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Products" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Jigma Shop </title>
        <!-- plugins:css -->
        <link rel="stylesheet/less" type="text/css" href="styles.less" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/feather/feather.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logoLigma.png" />
    </head>
    <body>
        <div class="container-scroller">
          <!-- partial:${pageContext.request.contextPath}/${pageContext.request.contextPath}/partials/_navbar.html -->
            <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row" ">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
                    <div class="me-3">
                        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
                            <span class="icon-menu"></span>
                        </button>
                    </div>
                    <div>
                        <a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/ligmaShop/adminPage.jsp">
                            <img img src="${pageContext.request.contextPath}/images/LIGMA SHOP WHITE ON BLACK.png" alt="logo" />
                        </a>
                        <a class="navbar-brand brand-logo-mini" href="${pageContext.request.contextPath}/ligmaShop/adminPage.jsp">
                            <img src="${pageContext.request.contextPath}/images/LIGMA SHOP WHITE ON BLACK.png" alt="logo" />
                        </a>
                    </div> <!-- logo -->
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-top">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown d-none d-lg-block user-dropdown">
                            <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                                <img class="img-xs rounded-circle" src="${pageContext.request.contextPath}/images/user.jpg" alt="Profile image"> </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                                <div class="dropdown-header text-center">
                                    <img class="img-md rounded-circle" src="${pageContext.request.contextPath}/images/user.jpg" alt="Profile image">
                                    <p class="mb-1 mt-3 fw-semibold">pok</p>
                                    <p class="fw-light text-muted mb-0">${pageContext.request.contextPath}.@gmail.com</p>
                                </div>
                                <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-account-outline text-primary me-2"></i>Trang Cá Nhân<span class="badge badge-pill badge-danger">1</span></a>
                                <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-calendar-check-outline text-primary me-2"></i> Hoạt Động</a>
                                <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-cog text-primary me-2"></i>Cài đặt</a>
                                <a class="dropdown-item" href=""><i class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>Đăng Xuất</a>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
              <!-- partial:${pageContext.request.contextPath}/${pageContext.request.contextPath}/partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ligmaShop/adminPage.jsp">
                                <i class="mdi mdi-grid-large menu-icon"></i>
                                <span class="menu-title">Trang Chủ</span>
                            </a>
                        </li>
                        <li class="nav-item nav-category">Công Cụ</li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
                                <i class="menu-icon mdi mdi-card-text-outline"></i>
                                <span class="menu-title">Quản Lý Sản Phẩm</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="form-elements">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/pages/deleteProduct.jsp">Xóa Sản Phẩm</a></li>
                                </ul>
                            </div>
                            <div class="collapse" id="form-elements">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/pages/editProduct.jsp">Sửa Sản Phẩm</a></li>
                                </ul>
                            </div>       
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                <i class="menu-icon mdi mdi-account-circle-outline"></i>
                                <span class="menu-title">Trang Sản Phẩm</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="auth">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/ligmaShop/user.jsp"> Xem Trang Sản Phẩm </a></li>

                                </ul>
                            </div>
                        </li>  
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row"> 

                            <div class="col-12 grid-margin stretch-card">
                                <div class="card"><!--/*thêm servlet ở đây*/-->
                                    <div class="card-body">
                                        <h4 class="card-title">Thêm Sản Phẩm</h4>
                                        <form class="forms-sample"> 
                                            <div class="form-group">
                                                <label for="exampleInputName1">Tên Sản Phẩm</label>
                                                <input type="text" class="form-control" id="exampleInputName1" placeholder="Tên Sản Phẩm">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail3">Mô tả</label>
                                                <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Mô tả">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword4">Giá tiền</label>
                                                <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Giá tiền">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleSelectGender">Giới tính</label>
                                                <select class="form-select" id="exampleSelectGender">
                                                    <option>Nam</option>
                                                    <option>Nữ</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail3">Loại Sản Phẩm</label>
                                                <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Loại Sản Phẩm">
                                            </div>
                                            <div class="form-group">
                                                <label>Tải Ảnh Lên</label>
                                                <input type="file" name="img[]" class="file-upload-default">
                                                <div class="input-group col-xs-12">
                                                    <input type="text" class="form-control file-upload-info" disabled placeholder="Thêm Ảnh">
                                                    <span class="input-group-append">
                                                        <button class="file-upload-browse btn btn-primary" type="button">Tải Lên</button>
                                                    </span>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary me-2">Lưu Sản Phẩm</button>
                                            <button class="btn btn-light">Hủy Bỏ</button>
                                        </form>
                                    </div>
                                </div>
                            </div>            
                            <!-- content-wrapper ends -->
                            <!-- footer -->
                            <footer class="footer">
                                <div class="d-sm-flex justify-content-center justify-content-sm-between">
                                    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium <a href="#" target="_blank">Link</a> OK</span>
                                    <span class="float-none float-sm-end d-block mt-1 mt-sm-0 text-center">Copyright © 2023. All rights reserved.</span>
                                </div>
                            </footer>
                            <!-- partial -->
                        </div>
                        <!-- main-panel ends -->
                    </div>
                    <!-- page-body-wrapper ends -->
                </div>

                <!-- plugins:js -->
                <script src="${pageContext.request.contextPath}/vendors/js/vendor.bundle.base.js"></script>
                <!-- Plugin js for this page -->
                <script src="${pageContext.request.contextPath}/vendors/js/vendor.bundle.base.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="${pageContext.request.contextPath}/js/off-canvas.js"></script>
    <script src="${pageContext.request.contextPath}/js/template.js"></script>
    <script src="${pageContext.request.contextPath}/js/settings.js"></script>
    <script src="${pageContext.request.contextPath}/js/hoverable-collapse.js"></script>
    <script src="${pageContext.request.contextPath}/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="${pageContext.request.contextPath}/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
                </body>
                </html>
