<%@ page import="bean.UtenteBean, java.util.*,bean.UtenteBean, model.AbbonamentiModel, bean.AbbonamentiBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="it" dir="ltr">
<head>
<title>footbal team</title>

<link rel="stylesheet" href="/PROGETTO/styles/layout.css" type="text/css">


</head>
<body>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="/PROGETTO/user/HomeLogged.jsp">Abbonamenti</a></h1>
      <h2>Il sito dedicato alla tua squadra del cuore '<3' </h2>
    </div>
    <nav>
      <ul>
        <li><a href="/PROGETTO/admin/HomeLoggedAdmin.jsp">HOME</a></li>
        <li><a href="/PROGETTO/admin/AbbonamentiAdmin.jsp">ABBONAMENTI</a></li>
        <li><a href="/PROGETTO/admin/SquadraAdmin.jsp">SQUADRA</a></li>
        <li><a href="StoriaAdmin.jsp">STORIA</a></li>
        <li><a href="/PROGETTO/admin/StaffAdmin.jsp">STAFF</a></li>
        

       
      </ul>
    </nav>
  </header>
</div>
<!-- content -->
<div class="wrapper row2">
  <div id="container" class="clear">
    
    <div id="homepage">
      <!-- Services -->
      <aside>
							<%UtenteBean bean=(UtenteBean)session.getAttribute("bean"); %>
							<p id="Benvenuto">Benvenuto <%=bean.getUsername() %></p>
						
						
					</aside>
      <section id="services" class="clear">
    	<figure><img src="/PROGETTO/images/titolo-abbonamenti-usavellino.jpg" width="450" height="250" alt="">
    	 <h></h>
     
      </section>
      <div id="inserisciAbb">
				
				<header><b>NUOVO ABBONAMENTO</b></header>
						<br>
						<form id="formabb" action="AbbonamentiServlet" method="post">
						<input type="hidden" name="action" value="insert"> 
							<label for="periodo">Periodo</label> <br>
						     <input id="periodo" required type="text" name="periodo" placeholder="inserisci periodo"> 
						     <br>   
						     <br>
						     <label for="prezzo">Prezzo</label> <br>
						     <input id="prezzo" required type="text" name="prezzo" placeholder="inserisci prezzo"> 
						     <br>
						     <br>
						     
						     <input id="buttonMod" type="submit" value="Inserisci"/>
						     
					   	</form>
				</div>	
			<div id="cancAbb">
				
				<header><b>CANCELLA ABBONAMENTO</b></header>
					 
						<br>
						<form id="formcanc" action="AbbonamentiServlet" method="post">
						<input type="hidden" name="action" value="delete">
							<select name="periodo">
								 <%
			          	  	AbbonamentiModel model= new AbbonamentiModel();
							Collection<String> abbo=new ArrayList<String>();
							abbo=model.doRetrieveAll();
						
			            	if(abbo!= null && abbo.size() > 0){
								Iterator<?> is= abbo.iterator();
								while(is.hasNext()){
									String stringa= (String) is.next(); %>
			             	 <option  value="<%=stringa%>"><%=stringa%> </option>
			             	<% 
								}
							}
				
			            	%>
			            	</select>
						     <br>
						     <br>
						     <input id="buttonMod" type="submit" value="Elimina"/>
						     
					   	</form>
				</div>	
      
      			<aside>
						<header><b>ABBONAMENTI:</b></header>
						<br>
					
							
					<select id="RESULT_RadioButton-5" name="RESULT_RadioButton-5">
		      
		          	  <%
		          	  
						abbo=model.doRetrieveAll();
					
		            	if(abbo!= null && abbo.size() > 0){
							Iterator<?> is= abbo.iterator();
							while(is.hasNext()){
								String stringa= (String) is.next(); %>
		             	 <option  value="<%=stringa %>"><%=stringa %> </option>
		             	<% 
							}
						}
			
		            	%>
         			 </select>
						     <br>
						     
						      <p id="prezzo">PREZZO:</p> 
						    
						     <script>		
				          	   var testSelect = document.getElementById('RESULT_RadioButton-5');
									testSelect.addEventListener('change', function() {
											x=this.value;
							       			
										    var xhttp = new XMLHttpRequest();
									        xhttp.onreadystatechange = function() {
											    if (this.readyState == 4 && this.status == 200) {
												    document.getElementById("prezzo").innerHTML = this.responseText;
													}
						     			    };  
						     			   xhttp.open("GET", "MostraAdmin.jsp?Periodo="+x, true);
						   				   xhttp.send(null);
										
									   });
		          	 			
						  </script>
								    
						     
						     
					
      </aside>
				
			
		
    </div>
    <!-- / content body -->
  </div>
</div>
<!-- Footer -->
<div class="wrapper row3">
  <div id="footer" class="clear">
    <!-- Section One -->
    <section class="one_quarter">
      <h2 class="title">STORIA</h2>
      <nav>
        <ul>
          
          <li><a href="/PROGETTO/admin/StadioAdmin.jsp">lo stadio</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Two -->
    <section class="one_quarter">
      <h2 class="title">ABBONAMENTI</h2>
      <nav>
        <ul>
          <li><a href="/PROGETTO/admin/AbbonamentiAdmin.jsp">acquista il tuo Abbonamento</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Three -->
    <section class="one_quarter">
      <h2 class="title">SQUADRA</h2>
      <nav>
        <ul>
          <li><a href="/PROGETTO/admin/RosaAdmin.jsp">Rosa</a></li>
          <li><a href="/PROGETTO/admin/PartiteAdmin.jsp">Partite</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Four -->
    <section class="one_quarter lastbox">
      <h2 class="title">CONTATTI</h2>
      <nav>
        <ul>
          
          <li><a href="/PROGETTO/admin/ContattiAdmin.jsp">contatti</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- / Section -->
  </div>
</div>
<!-- Copyright -->
<div class="wrapper row4">
  <footer id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">christian,andrea,luigi </a>
    <img src="/PROGETTO/images/sponsor_footer_1.png" >
      <img src="/PROGETTO/images/Serie-B_ConTe.it_.png" width=150px; heigth=50px;>
    </p>
    
  </footer>
</div>
</body>
</html>
