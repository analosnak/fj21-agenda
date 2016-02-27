<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*,
			br.com.caelum.agenda.dao.*,
			br.com.caelum.agenda.modelo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data Nascimento</th>
		</thead>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for (Contato contato : contatos) {
		%>
				<tr>
					<td><%= contato.getNome() %></td>
					<td><%=contato.getEmail() %></td>
					<td><%=contato.getEndereco() %></td>
					<% Date date = contato.getDataNascimento().getTime(); %>
					<% String data = new SimpleDateFormat("dd/MM/yyyy").format(date); %>
					<td><%= data %></td>
				</tr>
		<% 
			}
		%>				
	</table>
</body>
</html>