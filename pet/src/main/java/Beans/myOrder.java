package Beans;

import java.util.ArrayList;
import java.util.List;


public class myOrder {

	private int id_myorder;
	private int qte;
	private double totalOrdre;
	private int id_p;
	private int id_user;

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getId_myorder() {
		return id_myorder;
	}

	public void setId_myorder(int id_myorder) {
		this.id_myorder = id_myorder;
	}

	public int getQte() {
		return qte;
	}

	public void setQte(int qte) {
		this.qte = qte;
	}

	public double getTotalOrdre() {
		return totalOrdre;
	}

	public myOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setTotalOrdre(double totalOrdre) {
		this.totalOrdre = totalOrdre;
	}

	public int getId_p() {
		return id_p;
	}

	public void setId_p(int id_p) {
		this.id_p = id_p;
	}

	private List<Pet> prod = new ArrayList<Pet>();

	public myOrder(int id_myorder, int qte, double totalOrdre, int id_p,int id_user) {
		super();
		this.id_myorder = id_myorder;
		this.qte = qte;
		this.totalOrdre = totalOrdre;
		this.id_p = id_p;
		this.id_user = id_user;
	}

	public List<Pet> getPet() {
		return prod;
	}

	public void setPet(List<Pet> prod) {
		this.prod = prod;
	}
	
}
