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
<h4 align="center">REPORTE DE CLIENTE</h4>
 	<form id="idRegistra"  method="post"  
 		Class="form-horizontal"  
 		action="reporteClienteXSexo" target="idFrameReporte">
						<label class="col-lg-3 control-label">Sexo</label>          
				        <div class="col-lg-4">  
								<select	class="form-control" id="idSexo" name="sexo">
									<option value="Todos">Todos</option>
									<option value="Masculino">Masculino</option>
									<option value="Femenino">Femenino</option>
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