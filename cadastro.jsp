<!DOCTYPE html>
<html>
<head>
    <title>Formulário de Cadastro</title>
</head>
<body>
    <h1>Cadastro de Novo Usuário</h1>
    <form action="ProcessarCadastroServlet" method="post">

        <h2>Informações Pessoais</h2>
        Nome: <input type="text" name="nome"><br>
        Idade: <input type="text" name="idade"><br>

        <h2>Informações Acadêmicas</h2>
        Universidade: <input type="text" name="universidade"><br>
        Curso: <input type="text" name="curso"><br>

        <h2>Informações Profissionais</h2>
        Empresa: <input type="text" name="empresa"><br>
        Cargo: <input type="text" name="cargo"><br>

        <h2>Cor Favorita</h2>
        Cor: <input type="color" name="cor_favorita"><br>

        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
