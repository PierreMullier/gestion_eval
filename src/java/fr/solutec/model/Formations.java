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
public class Formations {
    private int idFormations;
    private String nom;


    public Formations(){

    }

    public Formations(int idFormations, String nom) {
        this.idFormations = idFormations;
        this.nom = nom;
    }

    public Formations(String nom) {
        this.nom = nom;
    }

    public int getIdFormations() {
        return idFormations;
    }

    public void setIdFormations(int idFormations) {
        this.idFormations = idFormations;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    
}