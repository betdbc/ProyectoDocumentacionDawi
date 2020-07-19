<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link href="css/bootstrap.min.css" rel="stylesheet"></link>
<link href="css/bootstrapValidator.min.css" rel="stylesheet"></link>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
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
<h4 align="center">REPORTE DE INGRESO</h4>
 	<form id="idRegistra"  method="post"  
 		Class="form-horizontal"  
 		action="reporteIngresoXestado" target="idFrameReporte">
						<label class="col-lg-3 control-label">Estado</label>          
				        <div class="col-lg-4">  
								<select	class="form-control" id="idEstado" name="estado">
									<option value="Todos">Todos</option>
									<option value="Visado">Visado</option>
									<option value="Sin Visar">Sin Visar</option>
								</select>
				  		</div>
				  		<div class="col-lg-4">
				            <input type="submit" id="consulta" Class="btn btn-primary"  value="Consultar"/>
				       </div>

			<iframe name="idFrameReporte"  id="idFrameReporte" 
			width="100%" height="650px"></iframe>	
    
	</form>				       
</body>
</html>