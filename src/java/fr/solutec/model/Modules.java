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
public class Modules {
    private int idModules;
    private String nom;

    public Modules() {
    }

    public Modules(int idModules, String nom) {
        this.idModules = idModules;
        this.nom = nom;
    }

    public Modules(String nom) {
        this.nom = nom;
    }

    public int getIdModules() {
        return idModules;
    }

    public void setIdModules(int idModules) {
        this.idModules = idModules;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    
}
