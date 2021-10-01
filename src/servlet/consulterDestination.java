package servlet;

import Beans.Session.LocalAgence;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "consulterDestination")
public class consulterDestination extends HttpServlet {
    @EJB
    LocalAgence localAgence ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id=Integer.parseInt(request.getParameter("id_destination"));

        request.setAttribute("destination",localAgence.getDestination(id));
        this.getServletContext().getRequestDispatcher("/consulter_destination.jsp").forward(request,response);
    }
}
