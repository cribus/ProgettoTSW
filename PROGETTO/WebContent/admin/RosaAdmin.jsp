<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,bean.UtenteBean, bean.CalciatoreBean, model.CalciatoreModel" %>
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
      <h1><a href="HomeLoggedAdmin.jsp">FootballTeam</a></h1>
      <h2>Il sito dedicato alla tua squadra del cuore</h2>
    </div>
    <nav>
      <ul>
        <li><a href="HomeLoggedAdmin.jsp">HOME</a></li>
        <li><a href="AbbonamentiAdmin.jsp">ABBONAMENTI</a></li>
        <li><a href="SquadraAdmin.jsp">SQUADRA</a></li>
        <li><a href="StoriaAdmin.jsp">STORIA</a></li>
          <li><a href="/PROGETTO/admin/StaffAdmin.jsp">STAFF</a></li>
        
      </ul>
    </nav>
  </header>
</div>
<div class="wrapper row2" id="divvv">
<h2 id="titolo">Rosa</h2>
<div id="tab">
	 
		<table>
			<tr>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Importanza</th>
				<th>Numero Maglia</th>
				<th>Ruolo</th>
			
			</tr>
		<%
			CalciatoreModel model= new CalciatoreModel();
			Collection<CalciatoreBean> cal=new ArrayList<CalciatoreBean>();
			cal=model.doRetrieveAll();
			
			if(cal!= null && cal.size() > 0){
					Iterator<?> it= cal.iterator();
					while(it.hasNext()){
						CalciatoreBean bean= (CalciatoreBean) it.next();
					%>
						<tr>
							<td><%= bean.getNome()  %></td>
							<td><%= bean.getCognome() %></td>
							<td><%= bean.getImportanza() %></td>
							<td><%= bean.getNumMaglia() %></td>
							<td><%= bean.getRuolo()%></td>
							<td><a href="RosaServlet?action=delete&CF=<%=bean.getCF()%>"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Red_X_Freehand.svg/2000px-Red_X_Freehand.svg.png" id="X"></a><br>
						</tr>
						
					<% 
					}
			}
			
			
			%>
		</table>

</div>
 <div id="inserisciPlayer">
				
				<header><b>NUOVO GIOCATORE</b></header>
						<br>
						<form id="formRosa" action="RosaServlet" method="post">
						<input type="hidden" name="action" value="insert"> 
							<label for="CF">Codice Fiscali</label> <br>
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
						     <input id="ruolo" required type="text" name="ruolo" placeholder="inserisci ruolo"> 
						     <br>
						     <br>
						     <label for="numMaglia">Numero Maglia</label> <br>
						     <input id="numMaglia" required type="text" maxlength="2" name="numMaglia" placeholder="inserisci il numero di maglia"> 
						     <br>
						     <br>
						     <label for="importanza">Importanza</label> <br>
						     <input id="importanza" required type="text" name="importanza" placeholder="inserisci importanza"> 
						     <br>
						     <br>
						     
						     <input id="buttonMod" type="submit" value="Inserisci"/>
						     
					   	</form>
					   	
					   <!--  	<a href="Contratti.jsp"><p>Click qui per gestione contratti...</p></a>-->
				</div>	
          		
<br>
<br>
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
