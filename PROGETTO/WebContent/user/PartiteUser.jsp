<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,bean.PartiteBean, model.PartiteModel, bean.AbbonamentiBean" %>
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
        <li><a href="HomeLogged.jsp">HOME</a></li>
        <li><a href="AbbonamentiUser.jsp">ABBONAMENTI</a></li>
        <li><a href="SquadraUser.jsp">SQUADRA</a></li>
        <li><a href="StoriaUser.jsp">STORIA</a></li>
        <li><a href="/PROGETTO/user/StaffUser.jsp">STAFF</a></li>
      </ul>
    </nav>
  </header>
</div>
<br>

<div class="wrapper row2">
	 <h2 id="titolo">Partite Disputate</h2>
		<table>
			<tr>
				<th>Squadra Avversaria</th>
				<th>Risultato</th>
				<th>Luogo</th>
				<th>Incasso</th>
				<th>Data</th>
			</tr>
		<%
			PartiteModel model= new PartiteModel();
			Collection<PartiteBean> part=new ArrayList<PartiteBean>();
			part=model.doRetrieveAll();
			
			if(part!= null && part.size() > 0){
					Iterator<?> it= part.iterator();
					while(it.hasNext()){
						PartiteBean bean= (PartiteBean) it.next();
					%>
						<tr>
							<td><%= bean.getSquadra_avversaria()  %></td>
							<td><%= bean.getRisultato() %></td>
							<td><%= bean.getLuogo() %></td>
							<td><%= bean.getIncasso() %></td>
							<td><%= bean.getPdata() %></td>
						</tr>
						
					<% 
					}
			}
			
			else{
			%>
				<tr>
					<th colspan="4">No Product Available</th>
				</tr>
			<%	
			}
		%>
		</table>
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
