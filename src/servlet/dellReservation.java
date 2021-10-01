package servlet;

import Beans.Session.LocalAgence;

import javax.ejb.EJB;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "dellReservation")
public class dellReservation extends HttpServlet {
    @EJB
    LocalAgence localAgence ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(request.getParameter("id_reservation"));

        String msg=localAgence.delReservation(id);
        if (msg.equals("ok")){
            response.sendRedirect("/Acceuil");
        }
    }
}
