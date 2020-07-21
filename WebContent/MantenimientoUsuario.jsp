<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="s"%>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>



<title>Usuario</title>
<style>
	.modal-header, h4, .close {
		background-color: #286090;
		color: white !important;
		text-align: center;
		font-size: 20px;
	}
	.help-block{
	 background-color: red;
	 display: none;
	}
	.dataTables_length{
	 display: none;
	}
	.dataTables_filter{
		text-align: right;
	}
	.dataTables_info{
	 display: none;
	}
	.dataTables_paginate{
		cursor: pointer;
	}
	.ocultar{
		display:none;
	}
	
</style> 
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
		     
		        <a href="cerrarSesion" class="nav-item nav-link">Cerrar Sesión</a>
	      </div>
    </div>
</nav>

<s:if test="${sessionScope.MENSAJE !=null}">
<div class="alert alert-warning alert-dismissible fade show" role="alert" id="success-alert">
  <strong>Sistema:</strong> ${sessionScope.MENSAJE}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</s:if>
<s:remove var="MENSAJE"/>

<!-- The Modal -->
  <div class="modal fade" id="myEliminar" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Sistema</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	¿Seguro que quieres eliminar a este usuario? 
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <form action="deleteUsuario" method="post" name="myForm">	
		  	   <input type="text" id="idEliminar" name="codUsuario" readonly="true">
		  	  <button type="submit" class="btn btn-primary">Si</button>
	          <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
          </form>
        </div>
        
      </div>
    </div>
  </div>

	<div class="container">
		<h3 align="center">Lista Usuarios</h3>
		<button type="button" data-toggle='modal'  data-target="#idModalRegistra"
				class='btn btn-primary' >Nuevos usuarios</button><br>&nbsp;<br>
				
				
				
		<div id="divEmpleado">
		 								<table id="idTable" class="table table-striped table-bordered" style="width:100%">
												<thead>
														<tr>
															<th>Codigo</th>
															<th>Nombre</th>
															<th>Apellido</th>
															<th>Usuario</th>
															<th>Contraseña</th>
															<th>Correo</th>
															<th></th>
															<th></th>
														</tr>
												</thead>
												<tbody>
												</tbody>
											</table>	

			</div>	
	
	
<!-- INICIO DIV NUEVO -->
<div class="modal fade bd-example-modal-lg" id="idModalRegistra" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 5px 20px">
					Registro de Usuario<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
       				   </button>
				</div>
				<div class="modal-body" style="padding: 20px 20px;">
					<form id="idRegistra" accept-charset="UTF-8" action="saveUsuario" enctype="multipart/form-data"
													class="form-horizontal" method="post" data-toggle="validator" role="form">						
		                   
		                                	<div class="form-group">
			                                   	<label for="staticEmail">Nombre</label>
												<input class="form-control" id="idNombre" name="usuario.nombres" placeholder="Ingrese su nombre"/>
			                                </div>    
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Apellido</label>
												<input class="form-control" id="idApellido" name="usuario.apellidos" placeholder="Ingrese su apellido"/>
			                                </div>  
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Usuario</label>
												<input class="form-control" id="idUsuario" name="usuario.login" placeholder="Ingrese su usuario"/>
			                                </div>    
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Contraseña</label>
												<input class="form-control" id="idContraseña" type="password" name="usuario.clave" placeholder="Ingrese su contraseña"/>
			                                </div>  
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Correo</label>
												<input class="form-control" id="idCorreo" name="usuario.correo" placeholder="Ingrese su correo"/>
			                                </div>  
		                                    	                                    
                        				<div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
									        <button type="submit" class="btn btn-primary">Guardar</button>
									    </div>

		            </form>      
				</div>
			</div>
		</div>
  </div>
  <!-- FIN DIV NUEVO -->
  
  <!-- INICIO DIV EDITAR -->
<div class="modal fade bd-example-modal-lg" id="idModalEditar" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 5px 20px">
					Actualizar Usuario<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
       				   </button>
				</div>
				<div class="modal-body" style="padding: 20px 20px;">
					<form id="idRegistra" accept-charset="UTF-8" action="updateUsuario" 
													class="form-horizontal" method="post" data-toggle="validator" role="form">						
		                   
		                   					<input type="text" id="idCodigoM" name="usuario.codigoUsuario" readonly="true"/>
		                                	<div class="form-group">
			                                   	<label for="staticEmail">Nombre</label>
												<input class="form-control" id="idNombreM" name="usuario.nombres" placeholder="Ingrese su nombre"/>
			                                </div>    
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Apellido</label>
												<input class="form-control" id="idApellidoM" name="usuario.apellidos" placeholder="Ingrese su apellido"/>
			                                </div>  
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Usuario</label>
												<input class="form-control" id="idUsuarioM" name="usuario.login" placeholder="Ingrese su usuario"/>
			                                </div>    
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Contraseña</label>
												<input class="form-control" id="idContraseñaM" name="usuario.clave" type="password" placeholder="Ingrese su contraseña"/>
			                                </div>  
		                                    <div class="form-group">
			                                   	<label for="staticEmail">Correo</label>
												<input class="form-control" id="idCorreoM" name="usuario.correo" placeholder="Ingrese su correo"/>
			                                </div>  		                                    
                        				<div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
									        <button type="submit" class="btn btn-primary">Actualizar</button>
									    </div>

		            </form>      
				</div>
			</div>
		</div>
  </div>
  <!-- FIN DIV EDITAR -->

</div>
  


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script   src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

<script>
var idTipo=0;

$(document).ready(function() {
	cargarTabla();
});
</script>
<script>
	function cargarTabla(){
		$.getJSON("listAllUsuarios",{},function(data){
			//bucle
			$.each(data.listaUsuario,function(index,item){
				var editar="<button type='button' class='btn btn-warning' "+
							"data-toggle='modal' data-target='#idModalEditar' id='idEditar'>Editar</button>";
				var eliminar="<button type='button' class='btn btn-danger' data-toggle='modal' "+
							"data-target='#myEliminar' onclick='eliminar("+item.codigoUsuario+")'>Eliminar</button>";
						
				$("#idTable").append("<tr><td>"+item.codigoUsuario+
						 "</td><td>"+item.nombres+
						 "</td><td>"+item.apellidos+
						 "</td><td>"+item.login+
						 "</td><td>"+item.clave+
						 "</td><td>"+item.correo+
						 "</td><td>"+editar+
						 "</td><td>"+eliminar+
						 "</td></tr>");
			})
			//formato para la tabla
			$("#idTable").DataTable();
		})
	}

	function eliminar(id){
		//alert(id);
		$("#idEliminar").val(id);
	}

	//asignar el evento clic al botón cuyo identificador ed idEditar
	$(document).on("click","#idEditar",function(){
		var cod=$(this).parents("tr").find("td")[0].innerHTML;
		var nom=$(this).parents("tr").find("td")[1].innerHTML;
		var ape=$(this).parents("tr").find("td")[2].innerHTML;
		var login=$(this).parents("tr").find("td")[3].innerHTML;
		var clave=$(this).parents("tr").find("td")[4].innerHTML;
		var correo=$(this).parents("tr").find("td")[5].innerHTML;
		
		$("#idCodigoM").val(cod);
		$("#idNombreM").val(nom);
		$("#idApellidoM").val(ape);
		$("#idUsuarioM").val(login);
		$("#idContraseñaM").val(clave);
		$("#idCorreoM").val(correo);
		
	})

</script>


<script type="text/javascript">    
    $(document).ready(function(){     
        $('#idRegistra').bootstrapValidator({      
        	 fields:{
        		 Nombre: {
     	    		selector:'#idNombre',   
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese nombre'    
                        },      
                        regexp: {
                            regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                            message: 'El nombre acepta letras mayúsculas, minúsculas con y sin tilde; y espacio'
                        },    
                    }    
                },   
                Apellido: {
     	    		selector:'#idApellido',       
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Apellido'    
                        },
                        regexp: {
                            regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                            message: 'El apellido acepta letras mayúsculas, minúsculas con y sin tilde; y espacio'
                        },
                    }    
                }, 
                Usuario: {
     	    		selector:'#idUsuario',       
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Usuario'    
                        },
                        regexp: {
                            regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                            message: 'El usuario acepta letras mayúsculas, minúsculas con y sin tilde; y espacio'
                        },
                    }    
                }, 
                
                Stock: {
     	    		selector:'#idContraseña',      
     	    		validators: {    
                        notEmpty: {    
                            message: 'Ingrese Contraseña'    
                        },
                        regexp: {
                            regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                            message: 'La contraseña acepta letras mayúsculas, minúsculas con y sin tilde; y espacio'
                        },
                    }      
                },
                
                Stock: {
     	    		selector:'#idCorreo', 
     	    		notEmpty: {
                        message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'No es valido el correo'
                    },
                 }		
        	   
        	 }
        });   
    });   
</script>   


</body>
</html>












