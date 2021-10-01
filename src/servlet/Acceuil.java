package servlet;

import Beans.Entity.Destination;
import Beans.Session.LocalAgence;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Vector;

@WebServlet(name = "Acceuil")
public class Acceuil extends HttpServlet {
    @EJB
    LocalAgence localAgence ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        request.setAttribute("liste_destination",localAgence.getAllDestination());
        request.setAttribute("liste_reservation",localAgence.getAllReservation());
        this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request,response);
    }
}
