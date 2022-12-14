<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>

    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>

<body>

    <header class="header--main-page">
        <c:import url="../header.jsp"/>
    </header>


    <section class="login-page">
        <h2>Zaloguj się</h2>
        <form method="post">
            <div class="form-group">
                <input type="text" name="username" placeholder="login" />
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Hasło" />
                <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </div>

            <div class="form-group form-group--buttons">
                <a href="/register" class="btn btn--without-border">Załóż konto</a>
                <button class="btn" type="submit">Zaloguj się</button>
            </div>
        </form>
    </section>

    <footer>
        <c:import url="../footer.jsp"/>
    </footer>
<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
