<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <title>Pagina web dinamica</title>
    <script src="script.js" ></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Antonio:wght@700&family=Roboto:wght@700&display=swap" rel="stylesheet">
</head>
<body>
<main>
    <article>
        <section class="form">
            <h1>Registro de usuarios</h1>
            <form action="registroUsuario" method="POST">
                <div class="inputs">
                    <input name="nombre" type="text" placeholder="Nombre">
                    <input name="edad" type="text" placeholder="Edad">
                    <input name="rut" type="text" placeholder="Rut">
                </div>
                <button class="animated-button" type="submit" onclick="animatedButton()">Registrar usuario</button>
            </form>
            <%
                String mensaje = (String) request.getAttribute("status");
                if (mensaje != null && !mensaje.isEmpty()) {
            %>
            <h2><%= mensaje %></h2>
            <%
                }
            %>
        </section>
    </article>
</main>
</body>
</html>