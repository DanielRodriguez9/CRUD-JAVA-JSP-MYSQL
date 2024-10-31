<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Enlace a la CDN de Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand"> Creado por Daniel Rodriguez</a>
			</div>
 <ul class="navbar-nav ms-auto me-3">
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/list" class="nav-link">Usuarios</a>
                    </li>
                </ul>
		</nav>
	</header>

	<br>

	<div class="row">

		<div class="container">
			<h3 class="text-center">Lista de Usuarios</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">
					Añade un nuevo usuario</a>

			</div>
			<br>

			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>Correo Electronico</th>
						<th>Contraseña</th>
						<th>Acciones</th>

					</tr>
				</thead>
				<tbody>

					<c:forEach var="user" items="${listUser}">

						<tr>

							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.password}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />" class="btn btn-primary btn-sm">
                                    <i class="bi bi-pencil"></i> Editar
                                </a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />" class="btn btn-danger btn-sm">
                                    <i class="bi bi-trash"></i> Eliminar
                                </a></td>
                         
                         
                         
                         
                      </tr>
                      </c:forEach>
                      </tbody>
                      </table>
                      </div>
                         
   
    </div>
    
    

    <!-- Enlace a la CDN de Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
