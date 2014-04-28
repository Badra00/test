package com.badra.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.badra.bean.Ingredient;
import com.opensymphony.xwork2.ActionSupport;

public class IngredientAction extends ActionSupport implements ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4913484025191623120L;
	
	
	private List<Ingredient> listeIngredient;
	private boolean modeEdite;
	private int id;
	private String nom;
	private double prix;
	private boolean edited;
	private HttpServletRequest httpServletRequest;
	private int idIngredient;
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		 this.httpServletRequest = request;
	}
	
	public boolean isModeEdite() {
		return modeEdite;
	}

	public void setModeEdite(boolean modeEdite) {
		this.modeEdite = modeEdite;
	}

	public List<Ingredient> getListeIngredient() {
		return listeIngredient;
	}

	public void setListeIngredient(List<Ingredient> listeIngredient) {
		this.listeIngredient = listeIngredient;
	}
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public double getPrix() {
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getIdIngredient() {
		return idIngredient;
	}

	public void setIdIngredient(int idIngredient) {
		this.idIngredient = idIngredient;
	}

	public String execute() {
		if(listeIngredient == null) {
			listeIngredient = new ArrayList<Ingredient>();
		}
		
		for(int i=1; i<=4; i++) {
			Ingredient ingr = new Ingredient();
			ingr.setId(i);
			ingr.setNom("Test");
			ingr.setPrix(1.5);
			
			listeIngredient.add(ingr);
		}
		setModeEdite(false);
		
		httpServletRequest.getSession(false).setAttribute("listeIngredient", listeIngredient);
		
		return SUCCESS;
	}
	
	public String ajouterIngredient() {
		if(listeIngredient == null) {
			listeIngredient = (List<Ingredient>) httpServletRequest.getSession(false).getAttribute("listeIngredient");
		}
		Ingredient ingr = new Ingredient();
		ingr.setEdited(true);
		
		listeIngredient.add(ingr);
		
		setModeEdite(true);
		
		return refresh();
	}
	
	public String enregistrer() {
		listeIngredient = (List<Ingredient>) httpServletRequest.getSession(false).getAttribute("listeIngredient");
		
		for(Ingredient ingr : listeIngredient) {
			if(ingr.isEdited()) {
				//TODO: Enregistrement en base
				
				ingr.setEdited(false);
				ingr.setNom(nom);
				ingr.setPrix(prix);
			}
		}
		
		setModeEdite(false);
		
		httpServletRequest.getSession(false).setAttribute("listeIngredient", listeIngredient);
		
		return refresh();
	}
	
	public String annuler() {
		listeIngredient = (List<Ingredient>) httpServletRequest.getSession(false).getAttribute("listeIngredient");
		
		Ingredient ingrToDelete = null;
		//TODO : a supprimer lorsqu'il y aura la base
		for(Ingredient ingr : listeIngredient) {
			ingr.setEdited(false);
			if(ingr.isEdited() && ingr.getNom() == null || ingr.getPrix() == null) {
				ingrToDelete = ingr;
			}
		}
		if(ingrToDelete != null) {
			listeIngredient.remove(ingrToDelete);
		}
		
		setModeEdite(false);
		
		httpServletRequest.getSession(false).setAttribute("listeIngredient", listeIngredient);
		
		return refresh();
	}
	
	public String refresh() {
		//TODO : recherche des infos en base
		
		listeIngredient = (List<Ingredient>) httpServletRequest.getSession(false).getAttribute("listeIngredient");
		
		return SUCCESS;
	}

	public String editer() {
		listeIngredient = (List<Ingredient>) httpServletRequest.getSession(false).getAttribute("listeIngredient");
		
		//TODO : a supprimer lorsqu'il y aura la base
		for(Ingredient ingr : listeIngredient) {
			if(idIngredient == ingr.getId()) {
				ingr.setEdited(true);
				nom = ingr.getNom();
				prix = ingr.getPrix();
			}
		}
		
		setModeEdite(true);
		
		httpServletRequest.getSession(false).setAttribute("listeIngredient", listeIngredient);
		
		return refresh();
	}

	

}
