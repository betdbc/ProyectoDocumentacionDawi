<jsp:include page="menu.jsp"/>
<!doctype html>
<html class="no-js">
  <head>
    <meta charset="UTF-8">
    <title>Boleta</title>
 
<!-- Latest compiled and minified CSS -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>
 <link rel="stylesheet" href="css/main.min.css">
 
 
  </head>
  <body class="  ">
   <div id="content">
        <div class="outer">
          <div class="inner bg-light lter">

            <br>
            <form action="grabarBoleta" class="form-horizontal" method="post">
                        <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-primary">
            			<div class="panel-heading">Cliente</div>
            			<div class="panel-body">
            			
            				<div class="form-group">
            					<div class="col-lg-6">
	            					<table id="clienteTable" class="table table-bordered table-condensed table-hover table-striped dataTable no-footer" 
	            							role="grid" aria-describedby="dataTable_info">
	            						<thead>
	            							<tr>
	            								<th>Codigo
												</th>
												<th>Nombre
												</th>
												<th>Apellido
												</th>
	            							</tr>
	            						</thead>
	            						<tbody id="clienteBody"></tbody>
	            					</table>
	            				</div>
	            				<div class="col-lg-6">
	            				<div class="form-group">
	            					<p class="text-center" id="infoproducto"></p>
	            					<label class="control-label col-lg-3">Código</label>
	            					<div class="col-lg-3">
	            						<input class="form-control"  name="codigoCliente" id="idCodigoCliente" readonly="true"/>

	            					
	            					</div>
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-3">Nombre</label>
	            					<div class="col-lg-6">
	            						<input class="form-control" id="idNombreCliente" readonly="true"/>
	            						
	            					</div>
	            					
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-3">Apellido</label>
	            					<div class="col-lg-6">
	            						<input class="form-control" id="idApellidoCliente" readonly="true"/>
	            					</div>
	            				</div>
            				</div>
            				</div>
            			</div>
            		</div>
            	</div>
            </div>
            <!-- Segunda parte -->
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-primary">
            			<div class="panel-heading">Medicamento</div>
            			<div class="panel-body">
            				<div class="form-group">
            					<label class="control-label col-lg-1">Laboratorio</label>
            					<div class="col-lg-6">
            						<select class="form-control" id="idLaboratorio">
            							<option value="-1">[Todos]</option>	
            						</select>
            					</div>
            				</div>
            			
            				<div class="form-group">
            					<div class="col-lg-6">
	            					<table id="medicamentoTable" class="table table-bordered table-condensed table-hover table-striped dataTable no-footer" 
	            							role="grid" aria-describedby="dataTable_info">
	            						<thead>
	            							<tr>
	            								<th>Codigo
												</th>
												<th>Descripcion
												</th>
												<th>Precio
												</th>
												<th>Stock
												</th>
	            							</tr>
	            						</thead>
	            						<tbody></tbody>
	            					</table>
	            				</div>
	            				<div class="col-lg-6">
	            				<div class="form-group">
	            					<p class="text-center" id="infoproducto"></p>
	            					<label class="control-label col-lg-3">Código</label>
	            					<div class="col-lg-3">
	            						<input class="form-control" id="idCodigo" readonly="true"/>
	            					</div>
	            					<div class="col-lg-3">
	            						<button class="btn btn-primary" type="button" id="btnAgregarProducto">Agregar</button>
	            					</div>
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-3">Descripción</label>
	            					<div class="col-lg-6">
	            						<input class="form-control" id="idDescripcion" readonly="true"/>	            						
	            					</div>
	            					
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-3">Precio</label>
	            					<div class="col-lg-3">
	            						<input class="form-control" id="idPrecio" readonly="true"/>
	            					</div>
	            				</div>
	            				<div class="form-group">
	            					<label class="control-label col-lg-3">Cantidad a pedir</label>
	            					<div class="col-lg-3">
	            						<input class="form-control" id="idCantidad"/>
	            					</div>
	            				</div>
            				</div>
            				</div>
            			</div>
            		</div>
            	</div>
            </div>
            <!-- Tercera parte -->
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-primary">
            			<div class="panel-heading">Detalle Boleta</div>
            			<div class="panel-body">
            				<div class="form-group">
            					<div class="col-lg-12">
	            					<table id="detalleTable" class="table table-bordered table-condensed table-hover table-striped dataTable no-footer" 
	            							role="grid" aria-describedby="dataTable_info">
	            						<thead>
	            							<tr>
												<th>Codigo</th>
												<th>Descripcion</th>
												<th>Precio</th>
												<th>Cantidad</th>
												<th>Importe</th>
												<th></th>
	            							</tr>
	            						</thead>
	            						<tbody></tbody>
	            					</table> 					           	
	            				</div>
	            				<div class="row">
	            					<div class="col-lg-3 col-lg-offset-9">
	            						<label class="control-label col-lg-3">Total S/.</label>
            							<div class="col-lg-6 col-lg-offset-3">
            								<input class="form-control" id="idTotal"  readonly/>            							</div>
	            					</div>
	            				</div>
            				</div>
            			</div>
            		</div>
            	</div>
            	 	
            </div>
            
            <!-- Cuarta parte -->
            
            <div class="row" align="center">
            	<div class="col-lg-12">
            	<br><button class="btn btn-primary" type="submit" id="btnRegistrar">Registrar</button>
	            	<button class="btn btn-primary">Salir</button>
            		
            	</div>
            	 	
            </div>
            </form>
          </div><!-- /.inner -->
        </div><!-- /.outer -->
      </div><!-- /#content -->
      




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script   src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

    <script>
    	var total=0;
	    $.getJSON("mostrarCompra",{},function(data){
			//bucle
			$.each(data.listaDetalle,function(index,item){
				total+=item.importe;
				$("#detalleTable").append("<tr><td>"+item.codigoMedicamento+"</td><td>"+
													 item.descripcion+"</td><td>"+
													 item.precio+"</td><td>"+
													 item.cantidad+"</td><td>"+
													 item.importe+"</td><td>"+
					"<button type='button' class='btn btn-danger' onclick='eliminar("+ 
												item.codigoMedicamento+")'>Eliminar</button></td></tr>");
			})
			$("#idTotal").val(total);
		});
    	
	    function eliminar(cod){
	    	var total=0;
	    	$("#detalleTable tbody").empty();
		    $.getJSON("eliminarMedicamento",{codigo:cod},function(data){
				//bucle
				$.each(data.listaDetalle,function(index,item){
					total+=item.importe;
					$("#detalleTable").append("<tr><td>"+item.codigoMedicamento+"</td><td>"+
														 item.descripcion+"</td><td>"+
														 item.precio+"</td><td>"+
														 item.cantidad+"</td><td>"+
														 item.importe+"</td><td>"+
						"<button type='button' class='btn btn-danger' onclick='eliminar("+ 
													item.codigoMedicamento+")'>Eliminar</button></td></tr>");
				})
				$("#idTotal").val(total);
			});
	    	
	    	
	    }
	    
    	
    	$.getJSON("listAllClientes",{},function(data){
			$.each(data.listaClientes,function(index,item){
				$("#clienteTable").append("<tr><td>"+item.codigo+"</td><td>"+
													 item.nombres+"</td><td>"+
													 item.apellidos+"</td></tr>");		
			})
			$("#clienteTable").DataTable();
    	})

		$.getJSON("listAllLaboratorios",{},function(data){
			//bucle
			$.each(data.listaLaboratorios,function(index,item){
				$("#idLaboratorio").append("<option value='"+item.idLaboratorio+"'>"+item.nombre+"</option>");
			})
		})
		//
		$("#idLaboratorio").change(function(){
			//obtener el valor actual del combo
			var codLab;
			codLab=$(this).val();
			$("#medicamentoTable tbody").empty(); 
			$.getJSON("listAllMedicamentoAtLaboratorio",{codigoLaboratorio:codLab},function(data){
				//bucle
				$.each(data.listaMedicamentos,function(index,item){
					$("#medicamentoTable").append("<tr><td>"+item.idMedicamento+"</td><td>"+
															 item.descripcion+"</td><td>"+
															 item.precio+"</td><td>"+
															 item.stock+"</td></tr>");
				})
				$("#medicamentoTable").DataTable();
			});
			
		})
		$("#clienteTable").on("click","tbody tr",function(){
			var cod,nom,ape;
			cod=$(this).children('td:eq(0)').html();
			nom=$(this).children('td:eq(1)').html();
			ape=$(this).children('td:eq(2)').html();
			
			$("#idCodigoCliente").val(cod);
			$("#idNombreCliente").val(nom);
			$("#idApellidoCliente").val(ape);
		})
		$("#medicamentoTable").on("click","tbody tr",function(){
			var cod,des,pre,stock;
			cod=$(this).children('td:eq(0)').html();
			des=$(this).children('td:eq(1)').html();
			pre=$(this).children('td:eq(2)').html();
			stock=$(this).children('td:eq(3)').html();
			
			$("#idCodigo").val(cod);
			$("#idDescripcion").val(des);
			$("#idPrecio").val(pre);
		})
    	
    	$("#btnAgregarProducto").click(function(){
    		var cod,des,pre,can,total=0;
    		cod=$("#idCodigo").val();
			des=$("#idDescripcion").val();
			pre=$("#idPrecio").val();
			can=$("#idCantidad").val();
			
			$.getJSON("validarMedicamento",{codigo:cod},function(data){
	            	if(data.mensajeMedicamento==null){   
							$("#detalleTable tbody").empty(); 
							$.getJSON("adicionar",{codigo:cod,descripcion:des,
									               precio:pre,cantidad:can},function(data){
								//bucle
								$.each(data.listaDetalle,function(index,item){
									total+=item.importe;
									$("#detalleTable").append("<tr><td>"+item.codigoMedicamento+"</td><td>"+
																			 item.descripcion+"</td><td>"+
																			 item.precio+"</td><td>"+
																			 item.cantidad+"</td><td>"+
																			 item.importe+"</td><td>"+
												"<button type='button' class='btn btn-danger' onclick='eliminar("+ 
																			item.codigoMedicamento+")'>Eliminar</button></td></tr>");
								})
								$("#idTotal").val(total);
							});
	            	}
	            	else
	            		alert(data.mensajeMedicamento);
	         });
			
			
    	})
		
		
		
    </script>

  </body>
</html>