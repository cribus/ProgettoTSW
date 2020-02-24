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
      <h1><a href="/PROGETTO/user/HomeLogged.jsp">BENVENUTO</a></h1>
      <h2>ACQUISTA ORA IL TUO ABBONAMENTO </h2>
    </div>
 
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
      <section id="acquisto">
		
			 <fieldset>
				<legend>Inserire i dati per l'acquisto:</legend>
				  <div class="TableRow">
				
				<form id="pagamento" action="AcquistoServlet" method="post">
				
				<label for="typeofcard">Scegli la tipologia di pagamento</label> <br>
					 <input type="radio" name="typeofcard" value="Visa"> <img id="visa" alt="visa" src="http://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/Visa-icon.png"  width=150px; heigth=50px;>
					 <input type="radio" name="typeofcard" value="MasterCard"> <img id="MC" alt="Master Card" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/MasterCard_logo.png/640px-MasterCard_logo.png" width=150px; heigth=50px;><br>
					 <input type="radio" name="typeofcard" value="PostePay"> <img id="PP" alt="PostePay" src="https://www.assistenza-clienti.it/wp-content/uploads/2010/11/postepay-assistenza.png" width=150px; heigth=50px;>
					 <input type="radio" name="typeofcard" value="PayPal"> <img id="PL" alt="PayPayl" src="http://ioshacker.com/wp-content/uploads/2016/02/Paypal-logo-1.png" width=150px; heigth=50px;><br>
					 <br>
					 
					 <label for="NumeroCarta">Numero Carta di Credito</label> <br>
					  <input id="numeroCarta"  required type="text" name="numeroCarta" maxlength="16" placeholder="enter credit card number"> 
				     <br>   	
				     <br>
				     <label for="dataScadenza">Data di Scadenza</label> <br>
					 <input id="dataScadenza" required type="text" maxlength="5" name="dataScadenza" placeholder=" mm / yy"> 
					 <br>
					 <br>
					 <label for="CVV">CVV</label> <br>
					 <input id="cvv"  type="text" required maxlength="3" name="cvv" placeholder="  ---"> 
					 <br>
					 <br>
					 <label for="intestatario">Intestatario Carta</label> <br>
				     <input id="intestatario" required type="text" name="intestatario" placeholder="es. Mario Rossi"> 
					 <br>
					 <br>
					 <label for="Città">Città</label> <br>
					 <input id="city" type="text" required name="city" placeholder="enter city"> 
					 <br>
					 <br>
				     <label for="indi">Indirizzo di Destinazione</label> <br>
				     <input id="indi" type="text" required name="indiD" placeholder="es. Via Pasquale Nicola 23"> 
				     <br>
				     <br>
				     <label for="telefono">Recapito Telefonico</label> <br>
				     <input id="tel" type="text" required name="tel" maxlength="10" placeholder="telephone number"> 
				     <br>
				     <br>
				     <input id="buttonAcq" type="submit" value="Acquista"/>
		     </form>
			
				</div>
			</fieldset>
			
		</section>
		
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
          <li><a href="/PROGETTO/user/Abbonamenti.jsp">acquista il tuo Abbonamento</a></li>
          
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
