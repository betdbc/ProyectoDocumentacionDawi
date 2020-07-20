<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>



<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/styles.css" rel="stylesheet" type="Text/css"/>
    
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  	  <div class="navbar-header">
		       <div class="navbar-header">
	     		  <a class="navbar-brand" href="menu.jsp">Regresar</a>
	  			</div>
	  	</div>
	  
	  <div class="collapse navbar-collapse">
		  <ul class="navbar-nav">
	
		   <c:forEach items="${sessionScope.ENLACES}" var="row">
		    <li class="nav-item">
		      <a class="nav-link" href="${row.ruta}">${row.descripcion}</a>
		    </li>
		</c:forEach>
	
		    
		  </ul>
	
		  <div class="navbar-nav ml-auto">
		  		
		     	<span class="nav-item nav-link">${sessionScope.USUARIO.apellidos} ${sessionScope.USUARIO.nombres}</span>  
		     
		        <a href="cerrarSesion" class="nav-item nav-link">Cerar Sesión</a>
	      </div>
    </div>
	</nav>
	<div class="container" id="advanced-search-form">
		<h2 align="center">REPORTE DE INGRESO</h2>
	 	<form id="idRegistra"  method="post" Class="form-horizontal" action="reporteIngresoXestado" target="idFrameReporte">
							<label class="col-lg-3 control-label" for="staticEmail">Estado</label>          
					        <div class="col-lg-4">  
									<select	class="form-control" id="idEstado" name="estado">
										<option value="Todos">Todos</option>
										<option value="Visado">Visado</option>
										<option value="Sin Visar">Sin Visar</option>
									</select>
					  		</div>
					  		
					  		<div class="clearfix">
					       </div>
					       
					       <button type="submit" class="btn btn-info btn-lg btn-responsive" id="consulta"> <span ></span> Consultar</button>
	
		</form>		
	
	</div>
		       
</body>
</html>