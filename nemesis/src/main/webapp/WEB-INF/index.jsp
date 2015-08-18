<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VMs</title>
</head>
<body>
    <h1>Lista de VMs</h1>
    <ul>
        <c:forEach var="vm" items="${vms}">
            <li>ID: ${vm.id} - Nombre:  ${vm.name} - Puerto: ${vm.port}</li>
        </c:forEach>
    </ul>
    
    <form:form method="post" action="addBook" commandName="vm">
  
    <table>
    <tr>
        <td><form:label path="id">ID:</form:label></td>
        <td><form:input path="id" /></td>
    </tr>
    <tr>
        <td><form:label path="name">Nombre:</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="port" >Puerto:</form:label></td>
        <td><form:input path="port" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" />
            
        </td>
    </tr>
    </table> 
 	</form:form>   
    
    <h3>Conexion</h3>
    <table>
    <tr>
    	<td><label>Direccion:</label></td>
        <td><input  id="direccion" /></td>
    </tr>
    <tr>
    	<td><label>Puerto:</label></td>
        <td><input name="puerto" id="puerto"/></td>
    </tr>
    <tr>
      <td><input type="button" name="conexion" id="conexion" value="Conexion"/></td>
    </tr>
    </table>


        <script type="text/javascript"> /* <![CDATA[ */
	   
       conexion.onclick = function() {
    	   
    	   var direccion = document.getElementById("direccion");
           var puerto = document.getElementById("puerto");
           var data =
                  "direccion=" + encodeURIComponent(direccion.value)
               + "&puerto=" + encodeURIComponent(puerto.value)
    	   
    	   window.open("mostrar?" + data);
       }
       
        /* ]]> */ </script>
    
</body>
</html>