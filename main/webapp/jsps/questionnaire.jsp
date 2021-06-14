<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <h1>Testez votre culture générale</h1>
    
    <c:if test="${ score != null }">
    <!-- Affichage du score (dans fenêtre modale) en fin de questionnaire -->
    <div id="score">
        <p>Score : <span id="points">${score}</span>/<span id="total">${ quest.size }</span></p>
        <button id="reload"><a href="questionnaire">Recommencer</a></button>
    </div>
    <!-- Fin : Affichage du score en fin de questionnaire -->
	</c:if>

    <form action="questionnaire" method="POST" id="formulaire">
        <div id="questions">
        	
        	<c:forEach var="quest" items="${ questionnaire }">
        	
        	<div class="question">
                <h2>${ quest.intitule }</h2>
                
                <c:set var="q" value="${ quest.numero }"/>
                
                <c:forEach var="rep" items="${ quest.reponses }">
                
                <div class="reponse">
                	<c:set var="n" value="${ rep.numero }"/>
                	
                    <input type="radio" name="quest${q}" id="q${q}r${n}" value="rep${n}">
                    <label for="q${q}r${n}">${ rep.libelle }</label>
                </div>
                
                </c:forEach>
            </div>
            
        	</c:forEach> 
        </div>

        <div class="boutons">
            <input type="reset" value="Réinitialiser">
            <input type="submit" value="Envoyer">
        </div>
        
    </form>

    <script src="js/questionnaire.js"></script>
</body>
</html>