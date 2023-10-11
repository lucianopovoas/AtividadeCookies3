<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Informações da Sessão</title>
</head>
<body>
    <h1>Informações da Sessão</h1>
    
    <%
        // Obter ou criar a sessão
        HttpSession session = request.getSession();

        // Obter o ID da sessão
        String sessionId = session.getId();

        // Obter a data e hora de criação da sessão
        long creationTime = session.getCreationTime();
        String creationTimeStr = new java.util.Date(creationTime).toString();

        // Obter a data e hora de acesso da última sessão
        long lastAccessedTime = session.getLastAccessedTime();
        String lastAccessedTimeStr = new java.util.Date(lastAccessedTime).toString();

        // Contar as sessões criadas
        Integer sessionCount = (Integer) session.getAttribute("sessionCount");

        if (sessionCount == null) {
            sessionCount = 1;
        } else {
            sessionCount++;
        }

        session.setAttribute("sessionCount", sessionCount);

        // Exibir informações da sessão
    %>
    <p>ID da Sessão: <%= sessionId %></p>
    <p>Data e Hora de Criação: <%= creationTimeStr %></p>
    <p>Data e Hora de Último Acesso: <%= lastAccessedTimeStr %></p>
    
    <%
        // Verificar se é a 5ª sessão
        if (sessionCount == 5) {
    %>
    <p>Parabéns! Esta é a 5ª sessão.</p>
    <%
        }
    %>
</body>
</html>
