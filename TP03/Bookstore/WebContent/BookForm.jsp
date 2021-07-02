<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Aluno: Giancarlo Pelegrini - CB3007634 --> 
<html>
<head>
	<title>Loja de Livros - Livraria</title>
</head>
<body>

	<center>
		<h1>Sistemas de Administração</h1>
        <h2>
        	<a href="new">Novo Livro</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">Ver todos os Livros</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${book != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${book != null}">
            			Edit Book
            		</c:if>
            		<c:if test="${book == null}">
            			Adicionar Livro Novo
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${book != null}">
        			<input type="hidden" name="id" value="<c:out value='${book.id}' />" />
        		</c:if>            
            <tr>
                <th>Título: </th>
                <td>
                	<input type="text" name="title" size="45"
                			value="<c:out value='${book.title}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Autor: </th>
                <td>
                	<input type="text" name="author" size="45"
                			value="<c:out value='${book.author}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Preço: </th>
                <td>
                	<input type="text" name="price" size="5"
                			value="<c:out value='${book.price}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Salvar" />
            	</td>
            </tr>
        </table>
        <br><a href="autor"> <h3>Aluno</h3></a>
        </form>
    </div>	
</body>
</html>
