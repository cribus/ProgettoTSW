
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="it" dir="ltr">
<head>
<title>football team</title>

<link rel="stylesheet" href="styles/layout.css" type="text/css">


</head>
<body>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="#">FootballTeam</a></h1>
      <h2>Il sito dedicato alla tua squadra del cuore</h2>
    </div>
    <nav>
      <ul>
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="Abbonamenti.jsp">ABBONAMENTI</a></li>
        <li><a href="Squadra.jsp">SQUADRA</a></li>
        <li><a href="Storia.jsp">STORIA</a></li>
        <li><a href="Staff.jsp">STAFF</a></li>
      </ul>
    </nav>
  </header>
</div>
<!-- content -->
<section  class="wrapper row2" id="pannelloReg">
			<h1 id="regi1">REGISTRATI!</h1>
			 <form id="reg" action="regServlet" method="post">
				 <label for="name">Name</label> <br>
				  <input id="name" type="text" name="name" placeholder="enter name"> 
			     <br>   	
			     <br>
			     <label for="surname">Surname</label> <br>
				 <input id="surname" type="text" name="surname" placeholder="enter surname"> 
				 <br>
				 <br>
				 <label for="CF">Codice Fiscale</label> <br>
			     <input id="CF" type="text" maxlength="16" name="CF" placeholder="enter fiscal code"> 
				 <br>
				 <br>
				  <label for="mail">Indirizzo e-mail</label> <br>
			     <input id="email" type="text" name="mail" placeholder="enter e-mail address"> 
				 <br>
				 <br>
				 <label for="username">Username</label> <br>
				 <input id="Utenteusername" type="text" name="username" placeholder="enter username"> 
				 <br>
				 <br>
			     <label for="password">Password</label> <br>
			     <input id="password" type="password" name="password" placeholder="enter password"> 
			     <br>
			     <br>
			     
			      <% String error=(String)request.getAttribute("error");
			      	if(error!=null &&! error.equals("")){
			      %>
			      	<p id="errorReg"><%=error %></p>	
			      <% 
			      	}
			      
			      %>
			    
			     
			   <input id="buttonRegi" type="submit" value="Registrami"/>
		
		     </form>
		</section>
<!-- Footer -->
<div class="wrapper row3">
  <div id="footer" class="clear">
    <!-- Section One -->
    <section class="one_quarter">
      <h2 class="title">STORIA</h2>
      <nav>
        <ul id="1">
          <li><a href="Stadio.jsp">stadio</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Two -->
    <section class="one_quarter">
      <h2 class="title">ABBONAMENTI</h2>
      <nav>
        <ul id="1">
          <li><a href="Abbonamenti.jsp">acquista il tuo Abbonamento</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Three -->
    <section class="one_quarter">
      <h2 class="title">SQUADRA</h2>
      <nav>
        <ul id="1">
          <li><a href="Rosa.jsp">Rosa</a></li>
          <li><a href="Partite.jsp">Partite</a></li>
          
        </ul>
      </nav>
    </section>
    <!-- Section Four -->
    <section class="one_quarter lastbox">
      <h2 class="title">CONTATTI</h2>
      <nav>
        <ul id="1">
          
          <li><a href="Contatti.jsp">contatti</a></li>
          
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