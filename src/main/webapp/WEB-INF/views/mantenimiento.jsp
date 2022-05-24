<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mantenimiento de Personas</title>
</head>
<body>
	<h1>${bienvenido}</h1>
	<h3>${fecha}</h3>
	<span>${mensaje}</span>
	
	<form action="${pageContext.request.contextPath}/mantenimiento/registrarActualizar" method="post" >
	<input type="hidden" name="id" value="${id}" />
	<table>
		<tbody>
			<tr>
				<td>Nombres:</td>
				<td><input type="text" name="nombres" value="${persona.nombres}" /></td>
			</tr>
			<tr>
				<td>Apellidos:</td>
				<td><input type="text" name="apellidos" value="${persona.apellidos}" /></td>
			</tr>
			<tr>
				<td>Edad</td>
				<td><input type="text" name="edad" value="${persona.edad}" /></td>
			</tr>
			<tr>
				<td colspan="2" ><input type="submit" value="Guardar" /></td>
			</tr>
		</tbody>
	</table>
	</form>
	
		<table border="1px" cellpadding="5px" cellspacing="0">
		<thead>
			<tr>
				<th style="width:120px" >Nombres</th>
				<th style="width:120px" >Apellidos</th>
				<th style="width:50px" >Edad</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="persona" items="${personas}" varStatus="id">
				<tr>
					<td><c:out value="${persona.nombres}"></c:out></td>
					<td><c:out value="${persona.apellidos}"></c:out></td>
					<td><c:out value="${persona.edad}"></c:out></td>
					<td><a
						href="${pageContext.request.contextPath}/mantenimiento/cargar?id=${id.count}">Actualizar</a>/
						<a
						href="${pageContext.request.contextPath}/mantenimiento/eliminar?id=${id.count}">Eliminar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
  
</body>
</html>