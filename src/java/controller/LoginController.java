/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author maiki
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");



        // Kiểm tra action và thiết lập giá trị "form"

        if (action == null || action.equals("login")) {

            request.setAttribute("form", "login");  // Đặt giá trị "form" là "login" để hiển thị form đăng nhập

        } else if (action.equals("register")) {

            request.setAttribute("form", "register");  // Đặt giá trị "form" là "register" để hiển thị form đăng ký

        }



        request.getRequestDispatcher("/auth.jsp").forward(request, response);  // Chuyển tiếp đến trang auth.jsp

    }



    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Xử lý đăng nhập và đăng ký

        String action = request.getParameter("action");



        if (action != null && action.equals("login")) {

            String email = request.getParameter("email");

            String password = request.getParameter("password");



            // Kiểm tra thông tin đăng nhập (thay bằng kiểm tra cơ sở dữ liệu)

            if ("user@example.com".equals(email) && "password123".equals(password)) {

                response.sendRedirect("home.jsp");  // Redirect tới trang home nếu đăng nhập thành công

            } else {

                // Thông báo lỗi và hiển thị lại form đăng nhập

                request.setAttribute("errorMessage", "Invalid email or password!");

                request.setAttribute("form", "login");

                request.getRequestDispatcher("auth.jsp").forward(request, response);

            }

        } else if (action != null && action.equals("register")) {

            String email = request.getParameter("email");

            String password = request.getParameter("password");



            // Lưu thông tin người dùng vào cơ sở dữ liệu (thực tế)

            response.sendRedirect("auth.jsp");  // Quay lại trang đăng nhập sau khi đăng ký thành công

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
