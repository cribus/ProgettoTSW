<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, model.AbbonamentiModel"%>

	

			
	<p>
		         	  <%
		   			//System.out.println(request.getParameter("Citta"));
		      	    AbbonamentiModel model= new AbbonamentiModel();
		      		
					int ID=model.trovaID(request.getParameter("Periodo"));
					System.out.println("IDMOSTRA="+ID);
					float prezzo=model.trovaPrezzo(ID);
					request.getSession().setAttribute("periodo", request.getParameter("Periodo"));
					%>
		             PREZZO: <%=prezzo%>&euro;
		            <% 
					
		         	%>
		         	</p>
		         	
		         	