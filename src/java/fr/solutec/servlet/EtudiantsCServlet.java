/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.EtudiantsDao;
import static fr.solutec.dao.EtudiantsDao.getONE;
import static fr.solutec.dao.EtudiantsDao.insertEtudiants;
import fr.solutec.dao.SessionDao;
import static fr.solutec.dao.SessionDao.getOneSession;
import static fr.solutec.dao.SessionEtudiants.insertSessionEtu;
import fr.solutec.model.Etudiants;
import fr.solutec.model.Sessions;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stagiaire
 */
@WebServlet(name = "EtudiantsServlet", urlPatterns = {"/Cetudiants"})
public class EtudiantsCServlet extends HttpServlet {

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
            out.println("<title>Servlet EtudiantsServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EtudiantsServlet at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<String> listSessions;
        try {
            listSessions = SessionDao.getSessions();

            request.setAttribute("listSessions", listSessions);

            request.getRequestDispatcher("WEB-INF/etudiantsC.jsp").forward(request, response);
  
        } catch (SQLException ex) {
            Logger.getLogger(eval.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("WEB-INF/etudiantsC.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String mail = request.getParameter("mail");
        String mdp = request.getParameter("mdp");
        String[] sessions = request.getParameterValues("pickersessions");
        try {
            Etudiants p = new Etudiants();
            p.setMail(mail);
            p.setNom(nom);
            p.setPassword(mdp);
            p.setPrenom(prenom);
            
            insertEtudiants(p);
            int i=0;
            int idEtu =getONE(nom, prenom, mail, mdp);
            int j=0;
            for(String s:sessions){
              int idSes = getOneSession(s);
              insertSessionEtu(idSes,idEtu);
              int k=0;
            }
            
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.print("exc " + e.getMessage());
        }
        request.getRequestDispatcher("WEB-INF/etudiantsC.jsp").forward(request, response);
        
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
