package com.badra.bean;

import java.io.Serializable;

public class Ingredient implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2895581299707191324L;
	
	private int id;
	private String nom;
	private double prix;
	private boolean edited;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Ingredient() {
		setEdited(false);
	}
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public Double getPrix() {
		return prix;
	}
	
	public void setPrix(double prix) {
		this.prix = prix;
	}

	public boolean isEdited() {
		return edited;
	}

	public void setEdited(boolean edited) {
		this.edited = edited;
	}


	
	
}
