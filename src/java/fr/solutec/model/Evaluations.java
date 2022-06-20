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
public class Evaluations {
    private int idEvaluations;
    private String description;
    private String date;

    public Evaluations(){
        
    }
    
    public Evaluations(int idEvaluations, String description, String date) {
        this.idEvaluations = idEvaluations;
        this.description = description;
        this.date = date;
    }
    
    public Evaluations(String description, String date) {
        this.description = description;
        this.date = date;
    }

    public int getIdEvaluations() {
        return idEvaluations;
    }

    public void setIdEvaluations(int idEvaluations) {
        this.idEvaluations = idEvaluations;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
    
}
