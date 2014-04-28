package com.badra.bean;

import java.io.Serializable;
import java.util.HashMap;

public class Recette implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6674857210922753126L;
	
	private int id;
	private String nom;
	private HashMap<Ingredient, Double> listeIngredients;
	private double masseTotal;
	private double prixTotal;
	
	public int getId() {
		return id;
	}
	public void setId(int idRecette) {
		this.id = idRecette;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public HashMap<Ingredient, Double> getListeIngredients() {
		return listeIngredients;
	}
	public void setListeIngredients(HashMap<Ingredient, Double> listeIngredients) {
		this.listeIngredients = listeIngredients;
	}
	public double getMasseTotal() {
		return masseTotal;
	}
	public void setMasseTotal(double masseTotal) {
		this.masseTotal = masseTotal;
	}
	public double getPrixTotal() {
		return prixTotal;
	}
	public void setPrixTotal(double prixTotal) {
		this.prixTotal = prixTotal;
	}
	
}
