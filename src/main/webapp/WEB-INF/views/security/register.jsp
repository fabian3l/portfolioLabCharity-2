<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <form:form method="post" modelAttribute="user">
        <div class="form-group"><label> Login: <form:input path="username"></form:input></label></div>
        <div class="form-group"><label> Imię: <form:input path="name"></form:input> </label></div>
        <div class="form-group"><label> Nazwisko: <form:input path="surname"></form:input></label></div>
        <div class="form-group"><label> Hasło: <form:password path="password"></form:password></label></div>
        <div class="form-group"><label> Email: <form:input path="email"></form:input></label></div>
        <button class="btn" type="submit">Załóż konto</button>
    </form:form>
</section>


<%--<section class="login-page">--%>
<%--    <h2>Załóż konto</h2>--%>
<%--    <form>--%>
<%--        <div class="form-group">--%>
<%--            <input type="email" name="email" placeholder="Email" />--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <input type="password" name="password" placeholder="Hasło" />--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <input type="password" name="password2" placeholder="Powtórz hasło" />--%>
<%--        </div>--%>

<%--        <div class="form-group form-group--buttons">--%>
<%--            <a href="login.html" class="btn btn--without-border">Zaloguj się</a>--%>
<%--            <button class="btn" type="submit">Załóż konto</button>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</section>--%>

<footer>
    <c:import url="../footer.jsp"/>
</footer>

<script src="<c:url value="resources/js/app.js"/>"></script>

</body>
</html>
