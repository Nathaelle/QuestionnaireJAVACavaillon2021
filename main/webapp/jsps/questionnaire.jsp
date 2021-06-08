<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
    
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

    <h1>Testez votre culture générale</h1>
    
    <div id="score">
        <p>Score : <span id="points">5</span>/<span id="total">5</span></p>
    </div>

    <form action="#" id="formulaire">
        <div id="questions">
            <!-- Plan type d'une question -->
            <div class="question">
                <h2>Intitulé de la question</h2>
                <div class="reponse">
                    <input type="radio" name="quest1" id="q1r1" value="rep1">
                    <label for="">Réponse 1</label>
                </div>
                <div class="reponse">
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
                </div>
            </div>
            
        </div>

        <div class="boutons">
            <input type="reset" value="Réinitialiser">
            <input type="submit" value="Envoyer">
        </div>
        
    </form>

    
    <script src="js/questionnaire.js"></script>
</body>
</html>