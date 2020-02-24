<%@ page import="java.util.*,bean.UtenteBean, model.AbbonamentiModel, bean.AbbonamentiBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="it" dir="ltr">
<head>
<title>football team</title>

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
        <li><a href="/PROGETTO/user/HomeLogged.jsp">HOME</a></li>
        <li><a href="/PROGETTO/user/AbbonamentiUser.jsp">ABBONAMENTI</a></li>
   		<li><a href="/PROGETTO/user/SquadraUser.jsp">SQUADRA</a></li>
        <li><a href="/PROGETTO/user/StoriaUser.jsp">STORIA</a></li>
		<li><a href="/PROGETTO/user/StaffUser.jsp">STAFF</a></li>
       
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
      <aside>
						<header><b>ACQUISTA IL TUO ABBONAMENTO</b></header>
						<br>
					<select id="RESULT_RadioButton-5" name="RESULT_RadioButton-5">
		      
		          	  <%
		          	  	AbbonamentiModel model= new AbbonamentiModel();
						Collection<String> abbo=new ArrayList<String>();
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
				     			   xhttp.open("GET", "Mostra.jsp?Periodo="+x, true);
				   				   xhttp.send(null);
								
							   });
          	 			
				  </script>
						    
						     
						     <a href="Acquista.jsp"><input id="button" type="submit" value="Acquista" /></a>
					
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
  
          <li><a href="/PROGETTO/user/StadioUser.jsp">lo stadio</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Two -->
    <section class="one_quarter">
      <h2 class="title">ABBONAMENTI</h2>
      <nav>
        <ul>
          <li><a href="/PROGETTO/user/AbbonamentiUser.jsp">acquista il tuo Abbonamento</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Three -->
    <section class="one_quarter">
      <h2 class="title">SQUADRA</h2>
      <nav>
        <ul>
          <li><a href="/PROGETTO/user/RosaUser.jsp">Rosa</a></li>
          <li><a href="/PROGETTO/user/PartiteUser.jsp">Partite</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Four -->
    <section class="one_quarter lastbox">
      <h2 class="title">CONTATTI</h2>
      <nav>
        <ul>
          
          <li><a href="/PROGETTO/user/ContattiUser.jsp">contatti</a></li>
          
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
