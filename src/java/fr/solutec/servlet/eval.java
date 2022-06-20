/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import static fr.solutec.dao.EtudiantsDao.getAll;
import static fr.solutec.dao.FirstProgram.FirstProgram;
import fr.solutec.dao.GestionEvaluationDAO;
import fr.solutec.model.Etudiants;
import fr.solutec.model.Evaluations;
import fr.solutec.model.Modules;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.metamodel.SetAttribute;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stagiaire
 */
@WebServlet(name = "eval", urlPatterns = {"/eval"})
public class eval extends HttpServlet {

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
            out.println("<title>Servlet eval</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet eval at " + request.getContextPath() + "</h1>");
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
        List<String> listModules;
        List<String> listSessions;
        try {
            listModules = GestionEvaluationDAO.getModules();
            listSessions = GestionEvaluationDAO.getSessions();
           
            request.setAttribute("listModules", listModules);
            request.setAttribute("listSessions", listSessions);

            request.getRequestDispatcher("WEB-INF/evaluations.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(eval.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("WEB-INF/evaluations.jsp").forward(request, response);
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
        String descri = request.getParameter("Description");
        String date = request.getParameter("Date");
        String[] selectedModules =request.getParameterValues("pickerModule");
        String[] selectedSessions =request.getParameterValues("pickerSession");
        //PrintWriter output = response.getWriter();
        //output.println(selectedModules);
        Evaluations eval = new Evaluations(descri, date);
        try {
            if (eval != null){
                GestionEvaluationDAO.insertEval(eval);
                String mail = "Bonjour, \n\nVous êtes convoqués à l'évaluation " + descri + " qui se déroulera le " + date + ". Elle portera sur le ou les module(s) suivants:";
                for (String m:selectedModules) mail += " " + m; 
                List<Etudiants> etudiants = getAll();
                for (Etudiants e:etudiants){
                    FirstProgram(e.getMail(), mail);
                }
            } else {
                request.getRequestDispatcher("WEB-INF/evaluations.jsp").forward(request, response);
                
            }
        } catch (Exception e){
            Logger.getLogger(eval.class.getName()).log(Level.SEVERE, null, e);
        } 
        request.setAttribute("msg", "Evaluation créée");
        request.getRequestDispatcher("WEB-INF/evaluations.jsp").forward(request, response);
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
