<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- XỬ LÍ DỮ LIỆU THANH TOÁN Ở DÒNG 182 -->


<html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
            <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/grid.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/thanhToan.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

            <title>Thanh Toán Đơn Hàng</title>

        </head>
        <body>       
            <div class="app">
                <%@ include file="../header/header.jsp" %>
                <div class="checkout-container">
                    <h2>Thanh Toán</h2>
                    <form action="#" method="post">

                        <div class="order-summary">
                            <h3>Danh Sách Sản Phẩm</h3>
                            <table>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Giá</th>
                                    <th>Tổng</th>
                                </tr>
                                <tr>
                                    <td><img src="${pageContext.request.contextPath}/images/product1.jpg" alt="Sản phẩm 1" class="product-img"></td>
                                    <td>Sản phẩm 1</td>
                                    <td><input type="number" class="quantity-input" value="2" min="1"></td>
                                    <td>500,000 VND</td>
                                    <td>1,000,000 VND</td>
                                </tr>
                                <tr>
                                    <td><img src="${pageContext.request.contextPath}/images/product2.jpg" alt="Sản phẩm 2" class="product-img"></td>
                                    <td>Sản phẩm 2</td>
                                    <td><input type="number" class="quantity-input" value="1" min="1"></td>
                                    <td>700,000 VND</td>
                                    <td>700,000 VND</td>
                                </tr>
                            </table>
                            <h3>Tổng tiền: 1,700,000 VND</h3>
                        </div>

                        <div class="user-info">
                            <h3>Thông Tin Người Nhận</h3>
                            <label>Tên:</label>
                            <input type="text" name="name" value="Nguyễn Văn A" readonly>

                            <label>Email:</label>
                            <input type="email" name="email" value="email@example.com" readonly>

                            <label>Số điện thoại:</label>
                            <input type="text" name="phone" value="0123456789" required>

                            <label>Địa chỉ giao hàng:</label>
                            <input type="text" name="address" value="123 Đường ABC, Hà Nội" required>
                        </div>

                        <div class="payment-method">
                            <h3>Phương Thức Thanh Toán</h3>
                            <label for="payment">Chọn phương thức thanh toán:</label>
                            <select name="payment" id="payment" required>
                                <option value="cod">Thanh toán khi nhận hàng</option>
                                <option value="bank">Chuyển khoản</option>
                                <option value="wallet">Ví điện tử</option>
                            </select>
                        </div>
                        <button type="submit">Xác nhận thanh toán</button>
                    </form>
                </div>
                <script>
                    function updateTotal() {
                        let rows = document.querySelectorAll("table tr");
                        let grandTotal = 0;
                        for (let i = 1; i < rows.length; i++) {
                            let quantity = rows[i].querySelector("input").value;
                            let price = rows[i].cells[2].textContent.replace(" VND", "").replace(/,/g, "");
                            let total = quantity * parseInt(price);
                            rows[i].cells[3].textContent = total.toLocaleString() + " VND";
                            grandTotal += total;
                        }
                        document.getElementById("grand-total").textContent = grandTotal.toLocaleString() + " VND";
                    }
                </script>

                <footer class="footer">
                    <div class="grid wide">
                        <div class="row">
                            <div class="col l-3 m-3 c-6">
                                <h3 class="footer__heading">Chăm sóc khách hàng</h3>
                                <ul class="footer__list">
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">Đinh Huy Hoàng</a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">Lê Xuân Hoàng</a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">Nguyễn Đức Huy Hoàng</a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">Lê Thành Đạt</a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">Nguyễn Đình Duy</a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">Nguyễn Minh Hiếu</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col l-3 m-3 c-6">
                                <h3 class="footer__heading">Theo dõi chúng tôi trên</h3>
                                <ul class="footer__list">
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">
                                            <i class="footer__list-item-icon fab fa-facebook"></i>
                                            Facebook
                                        </a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">
                                            <i class="footer__list-item-icon fab fa-instagram"></i>
                                            Instagram
                                        </a>
                                    </li>
                                    <li class="footer__list-item">
                                        <a href="" class="footer__list-item__link">
                                            <i class="footer__list-item-icon fab fa-tiktok"></i>
                                            Tiktok
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col l-3 m-3 c-6">
                                <h3 class="footer__heading">Vào cửa hàng</h3>
                                <div class="footer__download">
                                    <img src="${pageContext.request.contextPath}/images/qr.png" alt="" class="footer__download-qr">                            
                                    <div class="footer__download-apps">
                                        <a href="" class="footer__download-apps-link">
                                            <img src="${pageContext.request.contextPath}/images/1fddd5ee3e2ead84.png" alt="Goggle play" class="footer__download-apps-img">
                                        </a>
                                        <a href="" class="footer__download-apps-link">
                                            <img src="${pageContext.request.contextPath}/images/135555214a82d8e1.png" alt="AppStore" class="footer__download-apps-img">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer__bottom">
                        <div class="grid wide">
                            <p class="footer__text">2025 - Bản quyền thuộc về Công ti Những vì Tinh Tú LigmaShop</p>
                        </div>
                    </div>
                </footer>
            </div>
        </body>
    </html>
