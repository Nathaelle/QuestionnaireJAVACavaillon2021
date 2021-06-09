<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Import des classes nécessaires -->
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Question" %>
<%@ page import="models.Reponse" %>
    
    <!-- Template HTML -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

	<!-- On peux exécuter du code JAVA grâce aux balises suivantes,
	!! Attention à ne pas oublier de terminer par un ; 
	!! Il faut systématiquement "caster" les données -->
	<% ArrayList<Question> questionnaire = (ArrayList<Question>) request.getAttribute("questionnaire"); %>
	<!-- On transmet ici des données du contrôleur à la vue, 
	par l'intermédiaire de l'objet request
	Côté contrôleur (servlet) : request.setAttribute("key", "valeur")
	Côté vue (jsp) : request.getAttribute("key") -->

    <h1>Testez votre culture générale</h1>
    
    <%-- <% boolean isConnected = true; %>
    
    <% if(isConnected) { %>
    	<p>Vous êtes connecté !</p>
    <% } %>
    
    <% String[] courses = {"Tomates", "Pain", "Lait", "Salade"}; %>
    
    <ul>
    <% for(String str: courses) { %>
    	<li><%= str %></li>
    <% } %>
    </ul> --%>
    
    <% if(request.getAttribute("score") != null) { %>
    <!-- Affichage du score (dans fenêtre modale) en fin de questionnaire -->
    <div id="score">
        <p>Score : <span id="points"><%= request.getAttribute("score") %></span>/<span id="total"><%= questionnaire.size() %></span></p>
        <button id="reload"><a href="questionnaire">Recommencer</a></button>
    </div>
    <!-- Fin : Affichage du score en fin de questionnaire -->
	<% } %>

    <form action="questionnaire" method="POST" id="formulaire">
        <div id="questions">
        	
        	<% for(Question quest: questionnaire) { %>
        	
        	<div class="question">
                <h2><%= quest.getIntitule() %></h2>
                
                <% int q = quest.getNumero(); %>
                
                <% for(Reponse rep: quest.getReponses()) { %>
                <div class="reponse">
                	<% int n = rep.getNumero(); %>
                    <input type="radio" name="quest<%=q%>" id="q<%=q%>r<%=n%>" value="rep<%=n%>">
                    <label for="q<%=q%>r<%=n%>"><%= rep.getLibelle() %></label>
                </div>
                <% } %>
            </div>
        	      	
        	<% } %>
                     
        </div>

        <div class="boutons">
            <input type="reset" value="Réinitialiser">
            <input type="submit" value="Envoyer">
        </div>
        
    </form>

    
    <script src="js/questionnaire.js"></script>
</body>
</html>