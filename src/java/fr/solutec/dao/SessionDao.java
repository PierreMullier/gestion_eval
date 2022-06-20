/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Sessions;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author stagiaire
 */
public class SessionDao {
    public static List <String> getSessions() throws SQLException{
        List<String> sessions = new ArrayList<>();
        String sql ="SELECT * FROM sessions";
        Connection connexion =AccessDb.getConnection();
        Statement state = connexion.createStatement();
        ResultSet rs = state.executeQuery(sql);
        while(rs.next()) {
            /*Sessions m = new Sessions();
            m.setIdSessions(rs.getInt("idmodules"));
            m.setNom(rs.getString("nom"));
            users.add(m);*/
            sessions.add(rs.getString("nom"));
        }
        return sessions;
    }
    
}
