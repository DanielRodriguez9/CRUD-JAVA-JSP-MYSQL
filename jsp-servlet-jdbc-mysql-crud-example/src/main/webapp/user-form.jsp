<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Link de Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="" class="navbar-brand">Registrar Usuario</a>
        </div>
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath() %>/list" class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>

<br>

<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="${user != null ? 'update' : 'insert'}" method="post">
            
            <h2>${user != null ? 'Edit User' : 'USUARIO'}</h2>
            
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${user.id}' />" /> 
            </c:if>
            
            <fieldset class="form-group">
                <label>Nombre de Usuario</label> 
                <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
            </fieldset>
            
            <fieldset class="form-group">
                <label>Correo Electronico</label> 
                <input type="email" value="<c:out value='${user.email}' />" class="form-control" name="email" required="required">
            </fieldset>
            
            <fieldset class="form-group">
                <label>Contraseña</label> 
                <input type="password" value="<c:out value='${user.password}' />" class="form-control" name="password">
            </fieldset>
            
            <button type="submit" class="btn btn-success">Aceptar</button>
            
            </form>
        </div>
    </div>
</div>

<!-- Enlace a la CDN de Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
