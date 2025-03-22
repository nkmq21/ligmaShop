<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ligma Shop</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/feather/feather.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logoLigma.png" />
  </head>
  <body class="with-welcome-text">
    <div class="container-scroller">

      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
          <div class="me-3">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
              <span class="icon-menu"></span>
            </button>
          </div>
          <div>
            <a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/ligmaShop/adminPage.jsp">
                <img src="${pageContext.request.contextPath}/images/LIGMA SHOP WHITE ON BLACK.png" alt="logo" />
            </a>
            <a class="navbar-brand brand-logo-mini" href="${pageContext.request.contextPath}/ligmaShop/adminPage.jsp">
              <img src="${pageContext.request.contextPath}/images/logoLigma.png" alt="logo" />
            </a>
          </div>
        </div> <!-- các logo header -->
        <div class="navbar-menu-wrapper d-flex align-items-top">
          <ul class="navbar-nav">
            <li class="nav-item fw-semibold d-none d-lg-block ms-0">
              <h1 class="welcome-text">Xin Chào, <span class="text-black fw-bold">hi.</span></h1>
              <h3 class="welcome-sub-text">Đây Là Tổng Doanh Thu Của Bạn</h3>
            </li>
          </ul>
          <ul class="navbar-nav ms-auto">

              <li class="nav-item"><!<!-- icon search -->
              <form class="search-form" action="#">
                <i class="icon-search"></i>
                <input type="search" class="form-control" placeholder="Search Here" title="Search here">
              </form>
            </li>

            
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
                <a class="dropdown-item" ><i class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>Đăng Xuất</a>
              </div>
            </li> <!<!-- quản lý account -->
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar"><!-- Thanh menu -->
          <ul class="nav">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/ligmaShop/adminPage.jsp">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Trang chủ</span>
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
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/pages/addNewProduct.jsp">Thêm Sản Phẩm</a></li>
                </ul>
              </div>
<!--                <div class="collapse" id="form-elements">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/pages/deleteProduct.jsp">Xóa Sản Phẩm</a></li>
                </ul>
              </div>-->
              <div class="collapse" id="form-elements">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/ligmaShop/user.jsp">Sửa/Xóa Sản Phẩm</a></li>
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
              <div class="col-sm-12">
                <div class="home-tab">
                  <div class="d-sm-flex align-items-center justify-content-between border-bottom">
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active ps-0" id="home-tab" data-bs-toggle="tab" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Tổng Quan</a>
                      </li>                
                    </ul>
                    <div>
                      <div class="btn-wrapper">
                        <a class="btn btn-otline-dark" onclick="window.print()"> <i class="icon-printer"></i>In</a>
                        <a href="#" class="btn btn-primary text-white me-0"><i class="icon-download"></i> Tải Xuống</a>
                      </div>
                    </div>
                  </div> <!-- không có gì -->
                  <div class="tab-content tab-content-basic">
                    <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview">
                        <div class="row"> <!<!-- xem lượng người truy cập, số lượng người mua sản phẩm bất kì -->
                        <div class="col-sm-12">
                          <div class="statistics-details d-flex align-items-center justify-content-between">

                            <div>
                              <p class="statistics-title">Số Lượng Người Mua</p>
                              <h3 class="rate-percentage">7,682</h3>
                              
                            </div>
                            <div>
                              <p class="statistics-title">Số Lượng Người Truy Cập Trang</p>
                              <h3 class="rate-percentage">100000</h3>
                            </div>
                            <div class="d-none d-md-block">
                              <p class="statistics-title">Thời Gian Truy Cập Trang</p>
                              <h3 class="rate-percentage">2m:35s</h3>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-lg-8 d-flex flex-column">
                          <div class="row flex-grow">
                            <div class="col-12 grid-margin stretch-card">
                              <div class="card card-rounded">
                                <div class="card-body">
                                  <div class="d-sm-flex justify-content-between align-items-start">
                                    <div>
                                      <h4 class="card-title card-title-dash">Tổng Doanh Thu</h4>
                                    </div>
                                      <div class="dropdown">
                                          <button class="btn btn-light dropdown-toggle toggle-dark btn-lg mb-0 me-0" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Tháng Này </button>       
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                          <h6 class="dropdown-header">Settings</h6>
                                          <a class="dropdown-item" href="#">Tuần Này</a>
                                          <a class="dropdown-item" href="#">Năm Này</a>

                                        </div>
                                      </div><!-- nút sort -->
                                    
                                  </div>
                                  <div class="d-sm-flex align-items-center mt-1 justify-content-between">
                                    <div class="d-sm-flex align-items-center mt-4 justify-content-between">
                                      <h2 class="me-2 fw-bold">$36,2531.00</h2>
                                      <h4 class="me-2">USD</h4>
                                      <h4 class="text-success">(+1.37%)</h4>
                                    </div>
                                    <div class="me-3">
                                      <div id="marketingOverview-legend"></div>
                                    </div>
                                  </div> <!-- thêm doanh thu -->

                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row flex-grow">
                            <div class="col-12 grid-margin stretch-card">
                              <div class="card card-rounded table-darkBGImg">
                                <div class="card-body">
                                  <div class="col-sm-8">
                                    <h3 class="text-white upgrade-info mb-0"> Nâng Cao <span class="fw-bold">Chiến Dịch</span> của bạn để có thu nhập tốt hơn </h3>
                                    <a href="#" class="btn btn-info upgrade-btn">Cập Nhật Tài Khoản!</a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div> <!-- chưa biết thêm gì không -->
                        </div>
                        <div class="col-lg-4 d-flex flex-column">
                          <div class="row flex-grow">
                            <div class="col-12 grid-margin stretch-card">
                              <div class="card card-rounded">
                                <div class="card-body">
                                  <div class="row">
                                    <div class="col-lg-12">
                                      <div class="d-flex justify-content-between align-items-center mb-3">
                                        <div>
                                          <h4 class="card-title card-title-dash">Xếp Hạng Người Mua Nhiều Nhất</h4>
                                        </div>
                                      </div>
                                      <div class="mt-3">
                                        <div class="wrapper d-flex align-items-center justify-content-between py-2 border-bottom">
                                          <div class="d-flex">
                                            <img class="img-sm rounded-10" src="${pageContext.request.contextPath}/images/faces/face1.jpg" alt="profile">
                                            <div class="wrapper ms-3">
                                              <p class="ms-1 mb-1 fw-bold">${pageContext.request.contextPath}.</p>
                                              <small class="text-muted mb-0">162543</small>
                                            </div>
                                          </div>
                                          <div class="text-muted text-small"> 1h ago </div>
                                        </div>
                                        <div class="wrapper d-flex align-items-center justify-content-between py-2 border-bottom">
                                          <div class="d-flex">
                                            <img class="img-sm rounded-10" src="${pageContext.request.contextPath}/images/faces/face2.jpg" alt="profile">
                                            <div class="wrapper ms-3">
                                              <p class="ms-1 mb-1 fw-bold">${pageContext.request.contextPath}.</p>
                                              <small class="text-muted mb-0">162543</small>
                                            </div>
                                          </div>
                                          <div class="text-muted text-small"> 1h ago </div>
                                        </div>
                                        <div class="wrapper d-flex align-items-center justify-content-between py-2 border-bottom">
                                          <div class="d-flex">
                                            <img class="img-sm rounded-10" src="${pageContext.request.contextPath}/images/faces/face3.jpg" alt="profile">
                                            <div class="wrapper ms-3">
                                              <p class="ms-1 mb-1 fw-bold">${pageContext.request.contextPath}.</p>
                                              <small class="text-muted mb-0">162543</small>
                                            </div>
                                          </div>
                                          <div class="text-muted text-small"> 1h ago </div>
                                        </div>
                                        <div class="wrapper d-flex align-items-center justify-content-between py-2 border-bottom">
                                          <div class="d-flex">
                                            <img class="img-sm rounded-10" src="${pageContext.request.contextPath}/images/faces/face4.jpg" alt="profile">
                                            <div class="wrapper ms-3">
                                              <p class="ms-1 mb-1 fw-bold">${pageContext.request.contextPath}.</p>
                                              <small class="text-muted mb-0">162543</small>
                                            </div>
                                          </div>
                                          <div class="text-muted text-small"> 1h ago </div>
                                        </div>
                                        <div class="wrapper d-flex align-items-center justify-content-between pt-2">
                                          <div class="d-flex">
                                            <img class="img-sm rounded-10" src="${pageContext.request.contextPath}/images/faces/face5.jpg" alt="profile">
                                            <div class="wrapper ms-3">
                                              <p class="ms-1 mb-1 fw-bold">${pageContext.request.contextPath}.</p>
                                              <small class="text-muted mb-0">${pageContext.request.contextPath}.</small>
                                            </div>
                                          </div>
                                          <div class="text-muted text-small"> 1h ago </div>
                                        </div>
                                      </div>
                                    </div> <!-- bảng xếp hạng người mua nhiều nhất -->
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
             
              <span class="float-none float-sm-end d-block mt-1 mt-sm-0 text-center">Copyright © 2023. All rights reserved.</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
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
    <!-- End custom js for this page-->
  </body>
</html>