<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <!-- STEP 1: class .active is switching steps -->
        <div class="form--steps-counter">Krok <span>1</span>/4</div>

        <form:form method="post" modelAttribute="donation">
            <div data-step="1" class="active">
                <h3>Zaznacz co chcesz oddać:</h3>
<%--                    <div class="form-group form-group--checkbox">--%>
                        <form:checkboxes path="categories" items="${categories}" itemLabel="name"/><br/>
<%--                    </div>--%>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>


            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Liczba 60l worków:
                        <form:input path="quantity"/>
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 4 -->
            <div data-step="3">
                <h3>Wybierz organizacje, której chcesz pomóc:</h3>
                <div class="form-group form-group--checkbox">
                    <p>Instytucja</p>
                    <form:select path="institution">
                        <option value="-1">Wybierz instytucje</option>
                        <form:options items="${institutions}" itemLabel="name"/>
                    </form:select>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="4">
                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>
                <div class="form-section form-section--columns">
                    <div class="form-section--column">

                        <h4>Adres odbioru</h4>

                        <div class="form-group form-group--inline">
                            <label> Ulica
                                <form:input path="street"/>
                            </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Miasto
                                <form:input path="city"/>
                            </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Kod pocztowy
                                <form:input path="zipCode"/>
                            </label>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru</h4>
                            <div class="form-group form-group--inline">
                                <label> Data
                                    <form:input type="date" path="pickUpDate"/>
                                </label>
                            </div>


                            <div class="form-group form-group--inline">
                                <label> Godzina
                                    <form:input type="time" path="pickUpTime"/>
                                </label>
                            </div>

                            <div class="form-group form-group--inline">
                                <label>
                                    Uwagi dla kuriera
                                    <form:textarea path="pickUpComment"/>
                                </label>
                            </div>
                        </div>
                        <div class="form-group form-group--buttons">
                            <button type="button" class="btn prev-step">Wstecz</button>
                            <button type="button" class="btn next-step">Dalej</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- STEP 6 -->
            <div data-step="5">
                <h3>Podsumowanie Twojej darowizny</h3>

                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text"
                                >4 worki ubrań w dobrym stanie dla dzieci</span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text"
                                >Dla fundacji "Mam marzenie" w Warszawie</span
                                >
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="submit" class="btn">Potwierdzam</button>
                </div>
            </div>
        </form:form>
    </div>
</section>

<footer>
    <c:import url="../footer.jsp"/>
</footer>
<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>