<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="s"%>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/styles.css" rel="stylesheet" type="Text/css"/>
    <title>Documentos</title>
</head>

<body>
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
        <h2>Registrar Documento</h2>
        <form id="idRegistra" accept-charset="UTF-8" action="saveDocumentacion" 
													class="form-horizontal" method="post" data-toggle="validator" role="form">
            <div class="form-group">
                <label for="first-name">Nombre</label>
                <input type="text" class="form-control" name="documentacion.nombre" placeholder="Nombre" id="idNombre">
            </div>
            <div class="form-group">
                <label for="last-name">Asunto</label>
                <input type="text" class="form-control" name="documentacion.asunto" placeholder="Asunto" id="idAsunto">
            </div>
            <div class="form-group">
                <label for="country">Fecha</label>
                <input type="text" class="form-control" name="documentacion.fecha" placeholder="Fecha" id="idFecha">
            </div>
            <div class="form-group">
		                                        <label for="staticEmail">Colegio</label>
													<select id="idColegio" name="documentacion.codigoColegio" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
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
    <script>
		$(document).ready(function() {
			cargar();
		});
	</script>
	<script>	
		function cargar(){
		
			$.getJSON("listAllColegioscombo",{},function(data){
				//bucle
				$.each(data.listaColegios,function(index,item){
					$("#idColegio").append("<option value='"+item.cod+"'>"+item.nombre+"</option>");
				})
			})
			
		}
	
	
	</script>
    
    
</body>

</html>












