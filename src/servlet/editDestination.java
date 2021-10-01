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

@WebServlet(name = "editDestination")
public class editDestination extends HttpServlet {

    @EJB
    LocalAgence  localAgence;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id=Integer.parseInt(request.getParameter("id"));
        Destination destination=new Destination();
        destination.setDesignation(request.getParameter("designation"));
        destination.setHotelSejoure(request.getParameter("hotel"));
        destination.setNbrJour(request.getParameter("nb_jour"));
        destination.setPrixAdulte(request.getParameter("p_adulte"));
        destination.setPrixAdo(request.getParameter("p_enfant"));
        destination.setDateDepart(request.getParameter("date_depart"));

        String msg=localAgence.editDestination(id,destination);
        if (msg.equals("ok")){
            response.sendRedirect("/Acceuil");
        }
        else {
            request.setAttribute("destination",localAgence.getDestination(id));
            this.getServletContext().getRequestDispatcher("/modifie_destination.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id_destination"));

        request.setAttribute("destination",localAgence.getDestination(id));
        this.getServletContext().getRequestDispatcher("/modifie_destination.jsp").forward(request,response);
    }
}
