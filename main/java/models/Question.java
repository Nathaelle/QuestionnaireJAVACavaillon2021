package models;

import java.util.ArrayList;

public class Question {

	private int numero;
	private String intitule;
	private ArrayList<Reponse> reponses;

	public Question(int numero, String intitule, ArrayList<Reponse> reponses) {
		super();
		this.numero = numero;
		this.intitule = intitule;
		this.reponses = reponses;
	}
	

	public int getNumero() {
		return this.numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getIntitule() {
		return this.intitule;
	}

	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}

	public ArrayList<Reponse> getReponses() {
		return this.reponses;
	}

	public void setReponses(ArrayList<Reponse> reponses) {
		this.reponses = reponses;
	}
	
	public boolean verifReponse(int num) {
		for(Reponse r: this.reponses) {
			if (r.getNumero() == num) {
				return r.isValeur();
			}
		}
		return false;
	}
}
