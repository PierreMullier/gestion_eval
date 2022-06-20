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
public class Sessions {
    private int idSessions;
    private String nom;

    public Sessions() {
    }

    public Sessions(int idSessions, String nom) {
        this.idSessions = idSessions;
        this.nom = nom;
    }
    
    public Sessions(String nom) {
        this.nom = nom;
    }

    public int getIdSessions() {
        return idSessions;
    }

    public void setIdSessions(int idSessions) {
        this.idSessions = idSessions;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
}
