package servlet;

import Beans.Entity.Reservation;
import Beans.Session.LocalAgence;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addReservation")
public class addReservation extends HttpServlet {

    @EJB
    LocalAgence localAgence ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Reservation reservation=new Reservation() ;
        reservation.setIdDestination(Integer.parseInt(request.getParameter("destination")));
        reservation.setType(request.getParameter("type"));
        reservation.setDateReservation(request.getParameter("date_reservation"));
        reservation.setNom(request.getParameter("nom"));
        reservation.setPrenom(request.getParameter("prenom"));
        reservation.setDateNais(request.getParameter("date_naissance"));

        String msg=localAgence.addReservation(reservation);
        if (msg.equals("ok")){
            response.sendRedirect("/Acceuil");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");


        request.setAttribute("liste_destination",localAgence.getAllDestination());
       this.getServletContext().getRequestDispatcher("/crerer_reservation.jsp").forward(request,response);
    }
}
