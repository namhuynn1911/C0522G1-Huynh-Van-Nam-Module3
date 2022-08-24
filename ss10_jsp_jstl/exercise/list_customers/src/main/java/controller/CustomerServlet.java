package controller;

import model.Customers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/views")
public class CustomerServlet extends HttpServlet {
    private static List<Customers> customersList = new ArrayList<>();
    static {
        customersList.add(new Customers("nam", "19/11/1993", "Quảng nam", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdJYEoLTG6fzysVsoCuznIL7ehz5yi2HE1Ng&usqp=CAU"));
        customersList.add(new Customers("huỳnh", "25/071995", "huế", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdJYEoLTG6fzysVsoCuznIL7ehz5yi2HE1Ng&usqp=CAU"));
        customersList.add(new Customers("văn", "14/05/1997", "đà nẵng", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdJYEoLTG6fzysVsoCuznIL7ehz5yi2HE1Ng&usqp=CAU"));

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/result.jsp");
        request.setAttribute("customersList", customersList);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
