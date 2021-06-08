package models;

public class Reponse {

	private int numero;
	private String libelle;
	private boolean valeur;
	
	public Reponse(int numero, String libelle, boolean valeur) {
		super();
		this.numero = numero;
		this.libelle = libelle;
		this.valeur = valeur;
	}

	public int getNumero() {
		return this.numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getLibelle() {
		return this.libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public boolean isValeur() {
		return this.valeur;
	}

	public void setValeur(boolean valeur) {
		this.valeur = valeur;
	}
	
}
