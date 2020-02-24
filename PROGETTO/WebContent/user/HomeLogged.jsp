<%@ page import="bean.UtenteBean" %>
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
      <h1><a href="/PROGETTO/user/HomeLogged.jsp">FootballTeam</a></h1>
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
<!-- content -->

<div class="wrapper row2">
  <div id="container" class="clear">
    <!-- Slider -->
    <section id="slider">
    <h></h>
    <aside>
							<%UtenteBean bean=(UtenteBean)session.getAttribute("bean"); %>
							<p id="Benvenuto">Benvenuto <%=bean.getUsername() %></p>
						
							
							<form id="formlogout" action="/PROGETTO/LogoutServlet" method="post">
								<input id="buttonlogout" type="submit" value="Logout"/>
							</form>
					</aside>
    <a href="#"><img src="/PROGETTO/images/sfondo.jpg" alt="img principale" style="width: 960px; height: 360px; "></a></section>
    <!-- main content -->
    <div id="homepage">
      <!-- Services -->
      <section id="services" class="clear">
        <article class="one_third">
          <figure><img src="/PROGETTO/images/storia.jpg" width="290" height="180" alt="">
            <figcaption>
              <h2>La Storia</h2>
              <p>Anni e anni di passione passati insieme e grazie a voi! </p>
              <footer class="more"><a href="/PROGETTO/user/StoriaUser.jsp">Read More &raquo;</a></footer>
            </figcaption>
          </figure>
        </article>
        <article class="one_third">
          <figure><img src="/PROGETTO/images/italia.jpg" width="290" height="180" alt="">
            <figcaption>
              <h2>LA ROSA</h2>
              <p>Tutti i membri del team :D</p>
              <footer class="more"><a href="/PROGETTO/user/SquadraUser.jsp">Read More &raquo;</a></footer>
            </figcaption>
          </figure>
        </article>
        <article class="one_third lastbox">
          
						
                                
        </article>
      </section>
  
      <section id="intro" class="last clear">
      
        <article>
          <figure><img src="/PROGETTO/images/titolo-abbonamenti-usavellino.jpg" width="450" height="250" alt="">
          <img src="/PROGETTO/images/Logo_Serie_B_2014.png" width="150" height="50" style="width: 52px; height: 58px; ">
            <figcaption>
              <h2>abbonamenti stagione 2017/2018</h2> 
              <p>Inizia in grande questa nuova stagione gli abbonamenti17/18 ti stanno aspettando, clicca sul link e abbonati subito.... insegui la tua passione!!.</p>
              
              <footer class="more"><a href="/PROGETTO/user/AbbonamentiUser.jsp">Read More &raquo;</a></footer>
            </figcaption>
          </figure>
        </article>
      </section>
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
