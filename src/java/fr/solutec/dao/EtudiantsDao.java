/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Etudiants;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

/**
 *
 * @author stagiaire
 */
public class EtudiantsDao {
    public static void insertEtudiants(Etudiants p) throws SQLException{
        String sql = "INSERT INTO etudiants (nom, prenom, mail, password) values (?, ?, ?, ?); ";
        
        Connection connection = AccessDb.getConnection();
        PreparedStatement prepare = connection.prepareStatement(sql);
        prepare.setString(1, p.getNom());
        prepare.setString(2, p.getPrenom());
        prepare.setString(3, p.getMail());
        prepare.setString(4, p.getPassword());
        
        prepare.execute();
        
    }
public static Etudiants getONE(String nom) throws SQLException{

        String sql ="SELECT * FROM Etudiants WHERE";
        Connection connection = AccessDb.getConnection();
        PreparedStatement prepare = connection.prepareStatement(sql);
        Statement state =connection.createStatement();
        prepare.setString(1,nom);
        prepare.execute();
        ResultSet rs =state.executeQuery(sql);
            Etudiants u = new Etudiants();
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setMail(rs.getString("mail"));
            u.setPassword(rs.getString("mdp"));
        return u;
    }

public static List<Etudiants> getAll() throws SQLException{
List<Etudiants> users =new ArrayList<>();
String sql ="SELECT * FROM etudiants";
Connection connexion =AccessDb.getConnection();
Statement state =connexion.createStatement();
ResultSet rs =state.executeQuery(sql);
while(rs.next()) {
Etudiants e = new Etudiants();
e.setIdEtudiants(rs.getInt("idEtudiants"));
e.setNom(rs.getString("nom"));
e.setPrenom(rs.getString("prenom"));
e.setMail(rs.getString("mail"));
users.add(e);
}
return users;
}
    
}
