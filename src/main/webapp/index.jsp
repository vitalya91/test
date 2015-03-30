<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="false"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Вход</title>


</head>


<form name='loginForm' action="j_spring_security_check" method='POST'>
    <div class="logincontainer">
        <div class="login">
            <a href="form">Регистрация</a>
            <table>
                <tr>
                    <td>Имя </br><input type='text' name='j_username'>
                    </td>
                </tr>
                <tr>
                    <td>Пароль</br> <input type='password' name='j_password' />
                    </td>
                </tr>
            </table>
            <br />

          <input class="btn btn-primary" name="submit" type="submit" value=Войти /> <br />
        </div>

        <c:if test="${not empty error}">
            <div class="alert alert-danger" style="width: 200px; margin: 0px auto;" role="alert">
                    ${error}</div>
        </c:if>
    </div>
</form>
</body>
</html>