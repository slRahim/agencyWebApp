package servlet;

import Beans.Session.LocalAgence;

import javax.ejb.EJB;
import javax.ejb.Local;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "consulterReservation")
public class consulterReservation extends HttpServlet {
    @EJB
    LocalAgence localAgence ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id=Integer.parseInt(request.getParameter("id_reservation"));

        Object [] objects=localAgence.getReservation(id);

       request.setAttribute("reservation",objects[0]);
       request.setAttribute("destination",objects[1]);
      this.getServletContext().getRequestDispatcher("/consulter_reservation.jsp").forward(request,response);

    }
}
