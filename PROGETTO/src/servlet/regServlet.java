package servlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UtenteBean;
import model.UtenteModel;

/**
 * Servlet implementation class regServlet
 */
@WebServlet("/regServlet")
public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     boolean flag=false;
	static UtenteModel model=new UtenteModel();
	
    public regServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String error= "";
		String name=request.getParameter("name");
		System.out.println(name);
		String surname=request.getParameter("surname");
		String CF=request.getParameter("CF");
		System.out.println(CF);
		String mail=request.getParameter("mail");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		if(username == null || username.trim().equals("")) {
			error+= "Inserisci Username <br>"; 
		} else {
			request.setAttribute("username", username);
		}

		if(password == null || password.trim().equals("")) {
			error+= "Inserisci Password <br>";
		}
		
		if(name == null || name.trim().equals("")) {
			error+= "Inserisci Nome <br>";
		}
		if(surname== null || surname.trim().equals("")) {
			error+= "Inserisci Cognome <br>";
		}
		if(CF== null || CF.trim().equals("")) {
			error+= "Inserisci Codice Fiscale <br>";
		}
		if(mail == null || mail.trim().equals("")) {
			error+= "Inserisci Mail <br>";
			
		}
		
		if(error==null || !error.trim().equals("")){
			request.setAttribute("error", error);
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/registrati.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
	
		
		UtenteBean bean= new UtenteBean(CF,surname,name,mail,username,password);
		
		try {
			flag=model.alreadyExists(bean);
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		if(flag==true){
			try {
				model.doSave(bean);
				
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Successo.jsp");
				dispatcher.forward(request, response);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}	
		}
		else{
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/failReg.jsp");
			dispatcher.forward(request, response);
		}

	}
}

