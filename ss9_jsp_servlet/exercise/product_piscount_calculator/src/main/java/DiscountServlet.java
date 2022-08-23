import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String sanPham = request.getParameter("productPescription");
        int gia = Integer.parseInt(request.getParameter("listPrice"));
        int phanTram = Integer.parseInt(request.getParameter("discountPercent"));
        double chietKhau = gia * phanTram * 0.01;
        double giaSauChietKhau = gia - chietKhau;

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("sanPham", sanPham);
        request.setAttribute("gia", gia);
        request.setAttribute("phanTram", phanTram);
        request.setAttribute("chietKhau", chietKhau);
        request.setAttribute("giaSauChietKhau", giaSauChietKhau);
        requestDispatcher.forward(request, response);
    }
}
