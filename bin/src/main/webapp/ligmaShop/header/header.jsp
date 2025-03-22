<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <header class="header">
        <div class="grid wide">
            <nav class="header__navbar hide-on-mobile-tablet">
                <ul class="header__navbar-list">
                    <li class="header__navbar-item header__navbar-item--hasqr header__navbar-item--separate">
                        Tải ứng dụng
                        <div class="header__qr">
                            <div class="header__qr-apps">
                                <a href="" class="header__qr-link">
                                    <img src="https://pageofme.github.io/team1_prj301/images/googleplay.png" alt="Google Play" class="header__qr-download-img">
                                </a>
                                <a href="" class="header__qr-link">
                                    <img src="https://pageofme.github.io/team1_prj301/images/appstore.png" alt="AppStore" class="header__qr-download-img">
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="header__navbar-item">
                        Kết nối
                        <a href="https://www.facebook.com/groups/836319625350559" class="header__navbar-icon-link">
                            <i class="fa-brands fa-facebook"></i>
                        </a>
                        <a href="https://www.instagram.com/ligmashop?igsh=anV5YnBwNXJrbW8x&utm_source=qr" class="header__navbar-icon-link">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                        <a href="https://www.tiktok.com/@ligmashop?_t=ZS-8ujjzch4geg&_r=1" class="header__navbar-icon-link">
                            <i class="fa-brands fa-tiktok"></i>
                        </a>
                    </li>
                </ul>
                <ul class="header__navbar-list">
                    <li class="header__navbar-item header__navbar-item-hasnotify">
                        <a href="" class="header__navbar-item-link header__navbar-icon-link">
                            <i class="fa-regular fa-bell icon-notice-help"></i> Thông báo
                        </a>
                        <!-- Notification content omitted for brevity -->
                    </li>
                    <li class="header__navbar-item">
                        <a href="" class="header__navbar-item-link header__navbar-icon-link">
                            <i class="fa-duotone fa-solid fa-question icon-notice-help"></i> Trợ giúp
                        </a>
                    </li>
                    <c:choose>

                        <c:when test="${empty sessionScope.user}">
                            <li class="header__navbar-item header__navbar-item--strong header__navbar-item--separate">
                                <a href="${pageContext.request.contextPath}/ligmaShop/login/register.jsp">Đăng kí</a>
                            </li>
                            <li class="header__navbar-item header__navbar-item--strong">
                                <a href="${pageContext.request.contextPath}/ligmaShop/login/signIn.jsp">Đăng nhập</a>
                            </li>
                        </c:when>

                        <c:otherwise>
                            <li class="header__navbar-item header__navbar-user">
                                <c:set var="user" value="${user}"/>
                                <img src="${pageContext.request.contextPath}/resource/images/user.jpg" alt="" class="header__navbar-user-img">
                                <span class="header__navbar-user-name">${user.getName()}</span>
                                <ul class="header__navbar-user-menu">
                                    <li class="header__navbar-user-item">
                                        <a href="${pageContext.request.contextPath}/ligmaShop/user/profilePage.jsp">Hồ sơ của tôi</a>
                                    </li>
                                    <li class="header__navbar-user-item">
                                        <a href="${pageContext.request.contextPath}/authservlet">Đăng Xuất</a>
                                    </li>
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </nav>
            <!--Thanh tìm kiếm-->
            <div class="header-with-search">
                <label for="mobile-search-checkbox" class="header__mobile-search">
                    <i class="header__mobile-search-icon fas fa-search"></i>
                </label>
                <div class="header__logo">
                    <a href="${pageContext.request.contextPath}/test">
                        <img src="https://pageofme.github.io/team1_prj301/images/logo.png" alt=""
                             class="header__logo-img">
                    </a>
                </div>
                <input type="checkbox" hidden id="mobile-search-checkbox" class="header__search-checkbox">
                <div class="header__search">
                    <div class="header__search-input-wrap">
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm sản phẩm"
                               id="searchQuery" onkeydown="if (event.key === 'Enter')
                            sendMessage()">
                    </div>
                    <form action="<%=request.getContextPath()%>/products" method="GET" id="submitSearch">
                        <input hidden name="query" id="hiddenQuery"/>
                        <button type="submit" class="header__search-btn" onClick="submitSearch()">
                            <i class="header__search-btn-icon fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                    <script>
                        function submitSearch() {
                            document.getElementById('hiddenQuery').value = document.getElementById('searchQuery').value;
                        }
                    </script>
                </div>
                <div class="header__cart">
                    <div class="header__cart-wrap">
                        <i class="header__cart-icon fa-solid fa-cart-plus"></i>
                        <div class="header__cart-list header__cart--no-cart">
                            <img src="images/no-cart.jpg" alt="" class="header__cart-no-cart-img">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</html>