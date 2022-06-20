/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Modules;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author stagiaire
 */
public class SessionEtudiants {
    public static void insertSessionEtu(int idSes, int idEtu) throws SQLException {
         String sql = "INSERT INTO sessions_has_etudiants (sessions_idSessions,etudiants_idEtudiants) VALUES (?,?)";          
        Connection connection = AccessDb.getConnection();
        PreparedStatement prepare = connection.prepareStatement(sql);
            prepare.setInt(1, idSes);
            prepare.setInt(2, idEtu);
            prepare.execute();
        }
}
