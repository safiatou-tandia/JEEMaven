<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un contact</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2>Ajouter un contact</h2>
        <div class="navigation">
        <form action="ListeContacts.jsp" method="get">
            <button type="submit">Liste des Contacts</button>
        </form>
        <br>
        <form action="index.jsp" method="get">
            <button type="submit">Accueil</button>
        </form>
    </div>
    <!-- Formulaire d'ajout de contact -->
    <div class="wrapper">
        <form action="ContactServlet" method="post">
            <div class="field">
                <input type="text" id="name" name="name" placeholder="Nom et Prénom" autofocus required/>
                <label for="name">Nom</label>
            </div>
            <div class="field">
                <input type="text" id="email" name="email" placeholder="ex: votrenom@gmail.com" required/>
                <label for="email">E-Mail</label>
            </div>
            <div class="field">
                <input type="text" id="phone" name="phone" placeholder="Numéro de téléphone?" autofocus required/>
                <label for="contact">Téléphone</label>
            </div>
            <input class="button" type="submit" value="Ajouter" />
        </form>
    </div>

    <!-- Liens vers d'autres pages -->

</body>
</html>


