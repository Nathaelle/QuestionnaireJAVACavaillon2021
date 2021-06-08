package servlets;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Question;
import models.Reponse;

/**
 * Servlet implementation class Questionnaire
 */
@WebServlet(
		name = "questionnaire", 
		urlPatterns = { 
				"/questionnaire", 
				""
		})
public class Questionnaire extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Questionnaire() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// Appelle la JSP et lui fait suivre les objets request et response :
		this.getServletContext().getRequestDispatcher("/jsps/questionnaire.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private ArrayList<Question> getQuestionnaire() {
		
		ArrayList<Question> questionnaire = new ArrayList<>();
		
		// Question 1
		Reponse rep1 = new Reponse(1, "Oeil", true);
		Reponse rep2 = new Reponse(2, "Nez", false);
		Reponse rep3 = new Reponse(3, "Oreille", false);
		Reponse rep4 = new Reponse(4, "Estomac", false);
		
		ArrayList<Reponse> q1 = new ArrayList<>();
		q1.add(rep1);
		q1.add(rep2);
		q1.add(rep3);
		q1.add(rep4);
		
		Question quest1 = new Question(1, "Une conjonctivite est une maladie qui affecte quel organe?", q1);
		
		// Question 2
		Reponse rep5 = new Reponse(5, "Oursin", false);
		Reponse rep6 = new Reponse(6, "Marmotte", true);
		Reponse rep7 = new Reponse(7, "Chat", false);
		Reponse rep8 = new Reponse(8, "Pivert", false);
		
		ArrayList<Reponse> q2 = new ArrayList<>();
		q2.add(rep5);
		q2.add(rep6);
		q2.add(rep7);
		q2.add(rep8);
				
		Question quest2 = new Question(2, "Quel animal hiberne?", q2);
				

		questionnaire.add(quest1);
		questionnaire.add(quest2);
		
		return questionnaire;
	}

}
