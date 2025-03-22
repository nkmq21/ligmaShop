package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import model.Products;
import productDAO.ProductDAO;

@WebServlet(name = "ProductDetailServlet", urlPatterns = {"/productDetail"})
public class ProductDetailServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductDetailServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductDetailServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productIDStr = request.getParameter("pID");

        // Kiểm tra nếu productIDStr là null hoặc rỗng
        if (productIDStr != null && !productIDStr.isEmpty()) {
            try {
                int productID = Integer.parseInt(productIDStr);
                ProductDAO productDAO = new ProductDAO();
                Products product = productDAO.selectProduct(productID);
                request.setAttribute("singleProduct", product);
                request.getRequestDispatcher("ligmaShop/product/ProductDetail.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                // Xử lý lỗi nếu productID không phải là số hợp lệ
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID.");
            }
        } else {
            // Xử lý khi pID là null hoặc rỗng
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Product ID is missing.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}