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
      <h1><a href="index.jsp">La Squadra</a></h1>
      <h2>Il sito dedicato alla tua squadra del cuore</h2>
    </div>
    <nav>
      <ul>
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="Abbonamenti.jsp">ABBONAMENTI</a></li>
        <li><a href="Squadra.jsp">SQUADRA</a></li>
        <li><a href="Storia.jsp">STORIA</a></li>
        <li><a href="Staff.jsp">STAFF</a></li>
        <!--  <li class="last"><a href="#">Acquista</a></li>-->
      </ul>
    </nav>
  </header>
</div>
<!-- content -->
<div class="wrapper row2">
  <div id="container" class="clear">
    <!-- Slider -->
    <section id="slider"><a href="#"><img src="images/sfondo.jpg" alt="img principale" style="width: 960px; height: 360px; "></a></section>
    <!-- main content -->
    <div id="homepage">
      <!-- Services -->
      <section id="services" class="clear">
        <article class="one_third">
          <figure><img src="/PROGETTO/images/rosa.jpg" width="290" height="180" alt="">
            <figcaption>
              <h2>ROSA</h2>
              <p>Ecco tutti i giocatori dela tua squadra del cuore</p>
              <footer class="more"><a href="Rosa.jsp">Read More &raquo;</a></footer>
            </figcaption>
          </figure>
        </article>
        <article class="one_third">
          <figure><img src="/PROGETTO/images/partite.jpg" width="290" height="180" alt="">
            <figcaption>
              <h2>PARTITE</h2>
              <p>Visualizza lo storico delle partite dell'ultimo anno.</p>
              <footer class="more"><a href="Partite.jsp">Read More &raquo;</a></footer>
            </figcaption>
          </figure>
        </article>
        <article class="one_third lastbox">
          <aside>
						<header><b>LOGIN</b></header>
						<br>
						<form id="formlog" action="/PROGETTO/loginServlet" method="post">
							<label for="username">Username</label> <br>
						     <input id="username" required type="text" name="username" placeholder="enter username"> 
						     <br>   
						     <br>
						     <label for="password">Password</label> <br>
						     <input id="password" required type="password" name="password" placeholder="enter password"> 
						     <br>
						     <br>
						     
						     <input id="buttonlogin" type="submit" value="Login"/>
						     
					   	</form>
				 	    <% String error=(String)request.getAttribute("error");
						    		
				      			//if(error!=null || error.equals("Invalid username and password")){
				    	  %>
				     		<!--  <script>
				     	 		alert("Invalid username and password");
				   		 	</script>	-->	
				  	     <% 
				    		//}
				    	 %>
					   	
					   	
					   	 <p>Non sei ancora registrato?</p>
					   	
					   	
					   	 <a href="/PROGETTO/registrati.jsp"><input id="buttonReg" type="submit" value="Registrati"/></a>
					   	
						<br><br>
						
							
					</aside>
                                
        </article>
      </section>
      <!-- / Services -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- Introduction -->
      <section id="intro" class="last clear">
        <article>
          <figure><img src="images/titolo-abbonamenti-usavellino.jpg" width="450" height="250" alt="">
            <figcaption>
              <h2>abbonamenti stagione 2017/2018</h2>
              <p>Inizia in grande questa nuova stagione gli abbonamenti17/18 ti stanno aspettando, clicca sul link e abbonati subito.... insegui la tua passione!!.</p>
              
              <footer class="more"><a href="Abbonamenti.jsp">Read More &raquo;</a></footer>
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