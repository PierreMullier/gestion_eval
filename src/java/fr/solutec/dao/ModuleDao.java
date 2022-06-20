/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;
import java.sql.SQLException; 
import java.sql.Connection;
import java.sql.PreparedStatement;
import fr.solutec.model.Modules;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
/**
 *
 * @author stagiaire
 */
public class ModuleDao {
        
    

        public static void insertModule(Modules m) throws SQLException {
         String sql = "INSERT INTO modules (nom) VALUES (?)";          
        Connection connection = AccessDb.getConnection();
        PreparedStatement prepare = connection.prepareStatement(sql);
            prepare.setString(1, m.getNom());
            prepare.execute();
        }

    public static List <Modules> getAllModules() throws SQLException{
        List<Modules> users =new ArrayList<>();
        String sql ="SELECT * FROM modules";
        Connection connexion =AccessDb.getConnection();
        Statement state =connexion.createStatement();
        ResultSet rs =state.executeQuery(sql);
        while(rs.next()) {
            Modules m = new Modules();
            m.setIdModules(rs.getInt("idmodules"));
            m.setNom(rs.getString("nom"));
            users.add(m);
        }
        return users;
    }
}
