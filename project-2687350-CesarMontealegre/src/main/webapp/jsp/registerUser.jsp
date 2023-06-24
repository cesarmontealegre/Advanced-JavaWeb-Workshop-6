<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <!-- METADATA -->
    <!-- charset para caracteres especiales -->    <meta charset="UTF-8" />
    <!-- autor -->
    <meta name="author" content="Cesar Fernando Montealegre Correa" />
    <!-- description -->
    <meta name="description" content="Formulario de Registro de usuarios en Java Web Jakarta. Ingresa información personal y comienza a disfrutar de nuestros servicios con seguridad garantizada." />
    <!-- keywords -->
    <meta name="keywords" content="Registro de usuarto, formulario de Registro, crear cuenta, Registro en línea" />
    <!-- minium responsive viewport -->
    <meta name="viewport " content="width=device-width, initial-scale=1.0 " />
    <!-- TITLE -->
    <title>Registro de Usuario || My App Form</title>
    <!-- FAVICON -->
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.ico" />
    <!-- CSS -->
    <!-- bootstrap css / icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <!-- custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/stylesForms.css">
</head>

<body class="text-center">
<!-- login form -->
<main class="form w-100 m-auto">
    <form action="./register-user" method="post">
        <img class="mb-4" src="${pageContext.request.contextPath}/img/logo_form.png" alt="My App Form" width="200">
        <h4 class="text-secondary">My App Form</h4>
        <h1 class="h5 mb-3 fw-normal">Registro</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInput" placeholder="ingrese su nombre de usuario" required autofocus pattern="[A-Za-z0-9]{8, 12}">
            <label for="floatingInput">Usuario:</label>
        </div>

        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="ingrese su contraseña" required pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">
            <label for="floatingPassword">Contraseña:</label>
        </div>

        <div class="form-floating">
          <input type="password" class="form-control" id="floatingPasswordConfirm" placeholder="confirmar su contraseña" required pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">
          <label for="floatingPasswordConfirm">Confirmar:</label>
      </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Registrarse</button>
        <div id="link">
            <a href="${pageContext.request.contextPath}/login">Iniciar Sesión</a>
        </div>
    </form>

</main>

<jsp:include page="Templates/footer.jsp"/>
<!-- Bootstrap script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>

</html>