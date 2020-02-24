<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,bean.DirigenzaBean, model.DirigenzaModel" %>
<!DOCTYPE html>

<html lang="it" dir="ltr">
<head>
<meta name="viewport" content="width=device-width, initial scale=1.0">	
<title>football team</title>

<link rel="stylesheet" href="/PROGETTO/styles/layout.css" type="text/css">


</head>
<body>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="index.jsp">FootballTeam</a></h1>
      <h2>Il sito dedicato alla tua squadra del cuore</h2>
    </div>
    <nav>
      <ul>
        <li><a href="HomeLoggedAdmin.jsp">HOME</a></li>
        <li><a href="AbbonamentiAdmin.jsp">ABBONAMENTI</a></li>
        <li><a href="SquadraAdmin.jsp">SQUADRA</a></li>
        <li><a href="StoriaAdmin.jsp">STORIA</a></li>
        <li><a href="StaffAdmin.jsp">STAFF</a></li>
        
      </ul>
    </nav>
    
    
  </header>
</div>
<!-- content -->

<div class="wrapper row2" id="divv" >
	 <h2 id="titolo">Dirigenza</h2>
	<div id="tab" >
		<table>
			<tr>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Ruolo</th>
				<th>Telefono</th>
			</tr>
		<%
			DirigenzaModel model= new DirigenzaModel();
			Collection<DirigenzaBean> part=new ArrayList<DirigenzaBean>();
			part=model.doRetrieveAll();
			String ruolo="";
			if(part!= null && part.size() > 0){
					Iterator<?> it= part.iterator();
					while(it.hasNext()){
						DirigenzaBean bean= (DirigenzaBean) it.next();
						if(bean.getDirettore_generale()==1)
							ruolo="Direttore Generale";
						else if(bean.getAmministratore_Delegato()==1)
							ruolo="Amministratore Delegato";
						else if(bean.getDirettore_sportivo()==1)
							ruolo="DirettoreSportivo";
					%>
						<tr>
							<td><%= bean.getNome()  %></td>
							<td><%= bean.getCognome() %></td>
							<td><%=ruolo %></td>
							<td><%=model.trovaTelefono(bean.getID()) %></td>
							<td><a href="StaffServlet?action=delete&CF=<%=bean.getCF()%>"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Red_X_Freehand.svg/2000px-Red_X_Freehand.svg.png" id="X"></a><br>
						</tr>
						
					<% 
					}
			}
			
			
			%>
		</table>
		
	</div>
 <div id="inserisciPlayer">
				
				<header><b>NUOVO DIRIGENTE</b></header>
						<br>
						<form id="formStaff" action="StaffServlet" method="post">
						<input type="hidden" name="action" value="insert"> 
							<label for="CF">Codice Fiscale</label> <br>
							<input id="CF" required type="text" maxlength="16" name="CF" placeholder="inserisci CF"> 
						     <br>   
						     <br>
						     <label for="nome">Nome</label> <br>
						     <input id="nome" required type="text" name="nome" placeholder="inserisci nome"> 
						     <br>   
						     <br>
						     <label for="cognome">Cognome</label> <br>
						     <input id="cognome" required type="text" name="cognome" placeholder="inserisci cognome"> 
						     <br>
						     <br>
						      <label for="ruolo">Ruolo</label> <br>
						     <select name="ruolo">
						     	<option>Direttore Sportivo</option>
						     	<option>Direttore Generale</option>
						     	<option>Amministratore Delegato</option>
						     </select> 
						     <br>
						     <br>
						     <label for="num">Numero Telefonico</label> <br>
						     <input id="num" required type="text" maxlength="10" name="num" placeholder="inserisci il numero di telefono"> 
						     <br>
						     <br>
						    
						     
						     <input id="buttonMod" type="submit" value="Inserisci"/>
						     
					   	</form>
					   	
				</div>	
          		
<br>
<br>
</div>





      <!-- / Services -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
     <br></br>
     
     <br></br>
     <br></br>
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
