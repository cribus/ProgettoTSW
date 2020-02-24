<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,bean.UtenteBean, bean.CalciatoreBean, model.CalciatoreModel" %>
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
      <h1><a href="HomeLogged.jsp">FootballTeam</a></h1>
      <h2>Il sito dedicato alla tua squadra del cuore</h2>
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

<div class="wrapper row2">
	 <h2 id="titolo">Rosa</h2>
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
						</tr>
						
					<% 
					}
			}
			
			
			%>
		</table>
<br>
<br>
</div>
          

     
      <!-- / Introduction -->
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
