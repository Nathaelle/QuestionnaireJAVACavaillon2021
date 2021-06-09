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
    <link rel="stylesheet" href="css/questionnaire.css">
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
    
    <% boolean isConnected = true; %>
    
    <% if(isConnected) { %>
    	<p>Vous êtes connecté !</p>
    <% } %>
    
    <% String[] courses = {"Tomates", "Pain", "Lait", "Salade"}; %>
    
    <ul>
    <% for(String str: courses) { %>
    	<li><%= str %></li>
    <% } %>
    </ul>
    
    <div id="score">
        <p>Score : <span id="points">5</span>/<span id="total">5</span></p>
    </div>

    <form action="#" id="formulaire">
        <div id="questions">
        	
        	<% for(Question quest: questionnaire) { %>
        	
        	<div class="question">
                <h2><%= quest.getIntitule() %></h2>
                
                <% for(Reponse rep: quest.getReponses()) { %>
                <div class="reponse">
                    <input type="radio" name="quest1" id="q1r1" value="rep1">
                    <label for="">Réponse 1</label>
                </div>
                <% } %>
                <!-- <div class="reponse">
                    <input type="radio" name="quest1" id="q1r2" value="rep2">
                    <label for="">Réponse 2</label>
                </div>
                <div class="reponse">
                    <input type="radio" name="quest1" id="q1r3" value="rep3">
                    <label for="">Réponse 3</label>
                </div>
                <div class="reponse">
                    <input type="radio" name="quest1" id="q1r4" value="rep4">
                    <label for="">Réponse 4</label>
                </div> -->
            </div>
        	
        	
        	<% } %>
        
            <!-- Plan type d'une question -->
            
            
        </div>

        <div class="boutons">
            <input type="reset" value="Réinitialiser">
            <input type="submit" value="Envoyer">
        </div>
        
    </form>

    
    <script src="js/questionnaire.js"></script>
</body>
</html>