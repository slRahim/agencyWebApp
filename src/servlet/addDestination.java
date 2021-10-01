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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "addDestination")
public class addDestination extends HttpServlet {

    @EJB
    LocalAgence localAgence ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        Destination destination=new Destination();
        destination.setDesignation(request.getParameter("designation"));
        destination.setHotelSejoure(request.getParameter("hotel"));
        destination.setNbrJour(request.getParameter("nb_jour"));
        destination.setPrixAdulte(request.getParameter("p_adulte"));
        destination.setPrixAdo(request.getParameter("p_enfant"));
        destination.setDateDepart(request.getParameter("date_depart"));

        String msg=localAgence.addDestination(destination);
        request.setAttribute("msg",msg);
        if (msg.equals("ok")){
            response.sendRedirect("/Acceuil");
        }
        else {
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/crerer_destination.jsp").forward(request,response);
    }
}
