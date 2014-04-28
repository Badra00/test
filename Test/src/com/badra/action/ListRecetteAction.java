package com.badra.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.badra.bean.Recette;
import com.opensymphony.xwork2.ActionSupport;

public class ListRecetteAction extends ActionSupport implements ServletRequestAware  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5759445122259596551L;
	
	private HttpServletRequest httpServletRequest;
	private ArrayList<Recette> listeRecette;

	@Override
	public void setServletRequest(HttpServletRequest request) {
		 this.httpServletRequest = request;
	}

	
	public String execute() {
		if(listeRecette == null) {
			listeRecette = new ArrayList<Recette>();
		}
		
		for(int i=1; i<=4; i++) {
			Recette recette = new Recette();
			recette.setId(i);
			recette.setNom("Test");
			recette.setPrixTotal(150);
			recette.setMasseTotal(1);
			
			listeRecette.add(recette);
		}
		
		httpServletRequest.getSession(false).setAttribute("listeRecette", listeRecette);
		
		return SUCCESS;
	}
	
}
