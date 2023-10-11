<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dados do Usuário</title>
</head>
<body>
    <h2>Dados do Usuário</h2>
    <%
        Cookie[] cookies = request.getCookies();
        String corFavorita = "";

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("cor_favorita")) {
                    corFavorita = cookie.getValue();
                }
            }
        %>
        <h2 style="color:<%= corFavorita %>">Informações Pessoais</h2>
        <%
            for (Cookie cookie : cookies) {
                out.println(cookie.getName() + ": " + cookie.getValue() + "<br>");
            }
        } %>
</body>
</html>
