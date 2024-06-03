<%-- 
    Document   : index
    Created on : 27 mai 2024, 10:15:43
    Author     : safiatou.tandia
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenue</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Bienvenue sur Gestion des Contacts !🥰</h1>
        <form action="ajoutcontacts.jsp" method="get">
            <button type="submit">Ajouter un Contact</button>
        </form>
        <br>
        <form action="ListeContacts.jsp" method="get">
            <button type="submit">Liste des Contacts</button>
        </form>
    </div>
</body>
</html>
