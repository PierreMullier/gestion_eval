/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;
import fr.solutec.model.Modules;
import fr.solutec.model.Evaluations;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mister_botanic
 */
public class GestionEvaluationDAO {

    
    public static void insertEval(Evaluations eva) throws SQLException{
        String sql = "INSERT INTO Evaluations (description, date) VALUES (?, ?)";
        Connection connexion = AccessDb.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, eva.getDescription());
        prepare.setString(2, eva.getDate());
        prepare.execute();
    }
        
    

public static List<String> getModules() throws SQLException{
        List<String> modules =new ArrayList<>();
        String sql ="SELECT * FROM modules";
        Connection connexion =AccessDb.getConnection();
        Statement state =connexion.createStatement();
        ResultSet rs =state.executeQuery(sql);
        while(rs.next()) {
            /*Modules mod = new Modules();
            mod.setIdModules(rs.getInt("idModules"));
            mod.setNom(rs.getString("nom"));*/

            modules.add(rs.getString("nom"));
        }
        return modules;
    }

public static List<String> getSessions() throws SQLException{
        List<String> sessions =new ArrayList<>();
        String sql ="SELECT * FROM sessions";
        Connection connexion =AccessDb.getConnection();
        Statement state =connexion.createStatement();
        ResultSet rs =state.executeQuery(sql);
        while(rs.next()) {
            /*Modules mod = new Modules();
            mod.setIdModules(rs.getInt("idModules"));
            mod.setNom(rs.getString("nom"));*/

            sessions.add(rs.getString("nom"));
        }
        return sessions;
    }

public static List <Evaluations> getAllEvaluations() throws SQLException{
        List<Evaluations> eval =new ArrayList<>();
        String sql ="SELECT * FROM evaluations";
        Connection connexion =AccessDb.getConnection();
        Statement state =connexion.createStatement();
        ResultSet rs =state.executeQuery(sql);
        while(rs.next()) {
            Evaluations eva = new Evaluations();
            eva.setIdEvaluations(rs.getInt("idEvaluations"));
            eva.setDescription(rs.getString("description"));
            eva.setDate(rs.getString("date"));
            eval.add(eva);
        }
        return eval;
    }

}