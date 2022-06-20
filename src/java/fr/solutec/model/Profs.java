/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author stagiaire
 */
public class Profs {
    private int idProfs;
    private String nom;
    private String prenom;
    private String mail;
    private String password;

    public Profs(){
        
    }
    
    public Profs(int idProfs, String nom, String prenom, String mail, String password) {
        this.idProfs = idProfs;
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.password = password;
    }
    
     public Profs(String nom, String prenom, String mail, String password) {
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.password = password;
    }

    public int getIdProfs() {
        return idProfs;
    }

    public void setIdProfs(int idProfs) {
        this.idProfs = idProfs;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
     
     
    
    
    
}
