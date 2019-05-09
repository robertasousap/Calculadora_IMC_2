<!DOCTYPE html>
<html lang="br">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMC</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  <body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="panel-heading">
              <h3 class="panel-title">Descubra seu IMC</h3>
            </div>
            <div class="panel-body">
            <form>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Idade" name="idade" type="text">
                        <input class="form-control" placeholder="Altura" name="altura" type="text">
                        <input class="form-control" placeholder="Peso" name="peso" type="text">
                    </div>
                    <button class="btn btn-sm btn-dark">Calcular</a>
                </fieldset>
            </form>
        </div>
    </div>
    <!-- Scriptlet. Codigo Java no HTML. -->
    <%
      String alturaStr = request.getParameter("altura");
      String pesoStr = request.getParameter("peso");
      String idadeStr = request.getParameter("idade");
      if (idadeStr != null && pesoStr != null && alturaStr != null) {
         int idade = Integer.parseInt(idadeStr);
         float altura = Float.parseFloat(alturaStr);
         float peso = Float.parseFloat(pesoStr);
         float IMC = (peso/(altura*altura));
    %>
    <br>
    <%  if (IMC < 18.5 ) {   %>
      <p>
        Seu IMC é: <%=IMC%>. Seu índice de IMC é considerado como magreza.
      </p>
      <% } else if(IMC >= 18.6 && IMC < 24.9){ %>
      <p>
        Seu IMC é: <%=IMC%>. Seu índice de IMC é considerado como normal.
      </p>
      <% } else if(IMC >= 25.0 && IMC < 30.0){ %> 
      <p>
        Seu IMC é <%=IMC%>. Seu índice de IMC é considerado como sobrepeso.
      </p>  
      <% } else { %>
        <p>
          Seu IMC é <%=IMC%>. Seu índice de IMC é considerado como obesidade.
        </p>
      <% } %>
      <% }else { %>
        <br>
        <p></p>
  
     <% }
      %>
  </body>
</html>