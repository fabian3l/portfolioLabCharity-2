<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


        <nav class="container container--70">
            <ul class="nav--actions">
                <sec:authorize access="isAuthenticated()">
                    <a href="/user" class="btn btn--small btn--without-border">Witaj <sec:authentication property="principal.username"/></a>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                    <li><a href="/login" class="btn btn--small btn--without-border">Zaloguj</a></li>
                    <li><a href="/register" class="btn btn--small btn--highlighted">Załóż konto</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                <li>
                    <form action="<c:url value="/logout"/>" method="post">
                        <input class="fa fa-id-badge" type="submit" value="Wyloguj">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                     </form>
                </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="/admin">Admin panel</a></li>
                </sec:authorize>
            </ul>

            <ul>
                <li><a href="" class="btn btn--without-border active">Start</a></li>
                <li><a href="#steps" class="btn btn--without-border">O co chodzi?</a></li>
                <li><a href="#about-us" class="btn btn--without-border">O nas</a></li>
                <li><a href="#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
                <sec:authorize access="isAnonymous()">
                    <li><a href="/login" class="btn btn--without-border">Przekaż dary</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li><a href="/security/add_donation" class="btn btn--without-border">Przekaż dary</a></li>
                </sec:authorize>
                <li><a href="#contact" class="btn btn--without-border">Kontakt</a></li>
            </ul>
        </nav>

<sec:authorize access="isAnonymous()">
    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Zacznij pomagać!<br/>
                Oddaj niechciane rzeczy w zaufane ręce
            </h1>
        </div>
    </div>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Oddaj rzeczy, których już nie chcesz<br />
                <span class="uppercase">potrzebującym</span>
            </h1>

            <div class="slogan--steps">
                <div class="slogan--steps-title">Wystarczą 4 proste kroki:</div>
                <ul class="slogan--steps-boxes">
                    <li>
                        <div><em>1</em><span>Wybierz rzeczy</span></div>
                    </li>
                    <li>
                        <div><em>2</em><span>Spakuj je w worki</span></div>
                    </li>
                    <li>
                        <div><em>3</em><span>Wybierz fundację</span></div>
                    </li>
                    <li>
                        <div><em>4</em><span>Zamów kuriera</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</sec:authorize>

<script src="<c:url value="resources/js/app.js"/>"></script>
