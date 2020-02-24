<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


					   	   <% String error=(String)request.getAttribute("error");
						    		 
				      			if(error!=null || error.equals("Invalid username and password")){
				    	  %>
				     		  <script>
				     	 		alert("Invalid username and password");
				     	 		{window.location.href='index.jsp';}
				   		 	</script>	
				  	     <% 
				    		}
				    	 %>

</body>
</html>