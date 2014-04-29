package com.badra.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.badra.bean.Ingredient;
import com.badra.bean.Recette;
import com.opensymphony.xwork2.ActionSupport;

public class RecetteAction extends ActionSupport implements ServletRequestAware  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6455807335271012339L;
	
	private HttpServletRequest httpServletRequest;
	private int idIngredient;
	private int idRecette;
	private Recette recette;
	private boolean modeEdite;
	private HashMap<Ingredient, Double> mapIngredient;
	private double masseTotal;
	private double prixTotal;
	private String nom;

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

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.httpServletRequest = request;
	}

	public int getIdIngredient() {
		return idIngredient;
	}

	public void setIdIngredient(int idIngredient) {
		this.idIngredient = idIngredient;
	}

	public int getIdRecette() {
		return idRecette;
	}

	public void setIdRecette(int idRecette) {
		this.idRecette = idRecette;
	}
	
	
	public Recette getRecette() {
		return recette;
	}

	public void setRecette(Recette recette) {
		this.recette = recette;
	}

	public boolean isModeEdite() {
		return modeEdite;
	}

	public void setModeEdite(boolean modeEdite) {
		this.modeEdite = modeEdite;
	}

	public HashMap<Ingredient, Double> getMapIngredient() {
		return mapIngredient;
	}

	public void setMapIngredient(HashMap<Ingredient, Double> mapIngredient) {
		this.mapIngredient = mapIngredient;
	}

	public String editer() {
		recette = new Recette();
		
		nom = "Test";
		prixTotal = 150;
		masseTotal = 1;
		
		mapIngredient = new HashMap<Ingredient, Double>();
		
		for(int i=1; i<=4; i++) {
			Ingredient ingr = new Ingredient();
			ingr.setId(i);
			ingr.setNom("Test");
			ingr.setPrix(1.5);
			ingr.setEdited(false);
			
			mapIngredient.put(ingr, (double) (i*5));
		}
		
		setModeEdite(false);
		
		httpServletRequest.getSession(false).setAttribute("mapIngredients", mapIngredient);
		
		return SUCCESS;
	}
	
	public String ajouterIngredient() {
		mapIngredient = (HashMap<Ingredient, Double>) httpServletRequest.getSession(false).getAttribute("mapIngredients");
		
		Ingredient ingr = new Ingredient();
		ingr.setEdited(true);
		mapIngredient.put(ingr, (double) 0);
		
		setModeEdite(true);
		
		ArrayList<Ingredient> listeIngredient = new ArrayList<Ingredient>();
		
		for(int i=1; i<=4; i++) {
			Ingredient ing = new Ingredient();
			ingr.setId(i);
			ingr.setNom("Test");
			ingr.setPrix(1.5);
			
			listeIngredient.add(ing);
		}
		
		httpServletRequest.getSession(false).setAttribute("mapIngredients", mapIngredient);
		
		return SUCCESS;
	}
	
	

}
