<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="s"%>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>
 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link href="css/styles.css" rel="stylesheet" type="Text/css"/>


<title>Colegio</title>
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

<s:if test="${sessionScope.MENSAJE !=null}">
<div class="alert alert-warning alert-dismissible fade show" role="alert" id="success-alert">
  <strong>Sistema:</strong> ${sessionScope.MENSAJE}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</s:if>
<s:remove var="MENSAJE"/>



	<div class="container" id="advanced-search-form">
		<h2 align="center">Registrar Colegio</h2>
		 <form id="idRegistra" accept-charset="UTF-8" action="saveColegio" 
													class="form-horizontal" method="post" data-toggle="validator" role="form">
            <div class="form-group">
                <label for="first-name">Nombre</label>
                <input type="text" class="form-control" name="colegio.nombre" placeholder="Nombre" id="idNombre">
            </div>
            <div class="form-group">
                <label for="last-name">Director</label>
                <input type="text" class="form-control" name="colegio.director" placeholder="Asunto" id="idDirector">
            </div>
            <div class="form-group">
                <label for="country">Fecha</label>
                <input type="text" class="form-control" name="colegio.fecha" placeholder="Fecha" id="idFecha">
            </div>
            <div class="clearfix"></div>
            <button type="submit" class="btn btn-info btn-lg btn-responsive" id="search"> <span ></span> Guardar</button>
        </form>
  
</div>
  


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script   src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>





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
                            regexp: /^[a-zA-Z\s]+$/,    
                            message: 'The username can only consist of alphabetical, number, dot and underscore'    
                        },    
                    }    
                },   
                Descripcion: {
     	    		selector:'#idDescripcion',       
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Descripción'    
                        }   
                    }    
                },    
                Stock: {
                	selector:'#idStock',      
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Stock'    
                        },       
                    }    
                },    
                Precio: {
     	    		selector:'#idPrecio',     
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Precio'    
                        },       
                    }    
                }, 
                Fecha: {
     	    		selector:'#idFecha',   
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Fecha'    
                        },					
                    }    
                },   				
                Laboratorio: {
     	    		selector:'#idLaboratorio',   
                    validators: {    
                        notEmpty: {    
                            message: 'Seleccione Laboratorio'    
                        },					
                    }    
                } 
        	 }
        });   
			
    });   
</script>   


</body>
</html>












