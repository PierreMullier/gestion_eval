package fr.solutec.dao;
import java.sql.Connection;
import fr.solutec.model.Etudiants;
import fr.solutec.model.Profs;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author stagiaire
 */
public class PersonDao {
    
    public static Profs getByLoginAndPass(String login, String password) throws SQLException{
        Profs p = null;
        String sql = "SELECT * FROM profs WHERE mail = ? AND password = ?";
        
        Connection connection = AccessDb.getConnection();
        PreparedStatement prepare = connection.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, password);
        
        ResultSet rs =  prepare.executeQuery();
        
        if (rs.next()){
            p = new Profs();
            p.setIdProfs(rs.getInt("idProfs"));
            p.setNom(rs.getString("nom"));
            p.setPrenom(rs.getString("prenom"));
            p.setMail(rs.getString("mail"));
        }
        return p;
    }
    
}
