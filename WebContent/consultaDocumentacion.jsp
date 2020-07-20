<!doctype html>
<html class="no-js">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>
	<link rel="stylesheet" href="css/main.min.css">
	
	<link href="css/styles.css" rel="stylesheet" type="Text/css"/>
	
	
 
 	<title>Documentacion</title>
  </head>
  <body class="  ">
  
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
  
  
  
  
  
   <div id="content">
          <div class="container">

            <br>
            <form action="" class="form-horizontal" method="post" id="consDoc">
                        <div class="row" class="col-lg-12">
            	<div>
            		<div class="panel panel-primary" id="consDoc">
            			<div class="panel-heading" id="tit">Documentación</div>
            			<div class="panel-body">
            			
            				<div class="form-group">
            					<div class="col-lg-5">
	            					<table id="clienteTable" class="table table-bordered table-condensed table-hover table-striped dataTable no-footer" 
	            							role="grid" aria-describedby="dataTable_info">
	            						<thead>
	            							<tr>
	            								<th>Codigo
												</th>
												<th>Nombre
												</th>
												<th>Asunto
												</th>
												<th>Fecha
												</th>
												<th>Nombre de Colegio
												</th>
	            							</tr>
	            						</thead>
	            						<tbody id="clienteBody"></tbody>
	            					</table>
	            				</div>
	            				<div  class="control-label col-lg-7">
	            				<div class="form-group">
	            					<label class="control-label col-lg-4">Código</label>
	            					<div class="col-lg-5">
	            						<input class="form-control"  id="idCodigoCliente" readonly="true"/>
	            					</div>
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-4">Nombre</label>
	            					<div class="col-lg-5">
	            						<input class="form-control" id="idNombreCliente" readonly="true"/>
	            					</div>
	            					
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-4">Asunto</label>
	            					<div class="col-lg-5">
	            						<input class="form-control" id="idApellidoCliente" readonly="true"/>
	            					</div>
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-4">Fecha</label>
	            					<div class="col-lg-5">
	            						<input class="form-control" id="idFecha" readonly="true"/>
	            					</div>
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-4">Colegio</label>
	            					<div class="col-lg-5">
	            						<input class="form-control" id="idColegio" readonly="true"/>
	            					</div>
	            				</div>
	            				
            				</div>
            				</div>
            			
            			</div>
            		</div>
            	</div>
            	
            </div>
            
            </form>
            
            
           
          </div><!-- /.inner -->
      </div><!-- /#content -->
      
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script   src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

    <script>
    	
    	
    	$.getJSON("listAllDocumentaciones",{},function(data){
			$.each(data.listaDocumentacion,function(index,item){
				$("#clienteTable").append("<tr><td>"+item.codigo+"</td><td>"+
													 item.nombre+"</td><td>"+
													 item.asunto+"</td><td>"+
													 item.fecha+"</td><td>"+
													 item.nombrecole+"</td></tr>");		
			})
			$("#clienteTable").DataTable();
    	})

		$("#clienteTable").on("click","tbody tr",function(){
			var cod,nom,asun,fecha,nomcol;
			cod=$(this).children('td:eq(0)').html();
			nom=$(this).children('td:eq(1)').html();
			asun=$(this).children('td:eq(2)').html();
			fecha=$(this).children('td:eq(3)').html();
			nomcol=$(this).children('td:eq(4)').html();
			
			$("#idCodigoCliente").val(cod);
			$("#idNombreCliente").val(nom);
			$("#idApellidoCliente").val(asun);
			$("#idFecha").val(fecha);
			$("#idColegio").val(nomcol);
		})
		
    	
    	
    </script>

  </body>
</html>