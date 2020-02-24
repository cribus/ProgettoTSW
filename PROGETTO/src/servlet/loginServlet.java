package servlet;

import java.io.IOException;
/*import java.lang.ProcessBuilder.Redirect;   far vedere a MArzullo*/
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UtenteBean;
/*import model.CartModel;*/
import model.UtenteModel;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static UtenteModel model=new UtenteModel();
	
    public loginServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String error= "";
		UtenteBean bean=new UtenteBean();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String redirectPage;
			
		if(username == null || username.trim().equals("")) {
			error+= "Inserisci Username <br>"; 
		} else {
			request.setAttribute("username", username);
		}

		if(password == null || password.trim().equals("")) {
			error+= "Inserisci Password <br>";
		}
		
		try{
			bean=model.checkUser(username, password);
			boolean logged=true;
			if(!bean.getCF().equals("")){
			
				//redirectPage="/logged.jsp";
				//response.sendRedirect(request.getContextPath() + redirectPage);
				request.getSession().setAttribute("logged", logged);
				request.getSession().setAttribute("bean", bean);
				HttpSession session= request.getSession();
				if(logged){
					synchronized (session) { /*userservlet*/
						request.getSession().setAttribute("username", bean.getUsername());
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserServlet"); 
						dispatcher.forward(request, response);
					}
				}				
			}
			else{
				error="Invalid username and password";
				request.setAttribute("error", error);
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/fail.jsp"); 
				dispatcher.forward(request, response);
				//redirectPage="/contatti.jsp";
				//response.sendRedirect(request.getContextPath() + redirectPage);
			}
			
		}
		catch (Exception e) {
				
			
		}
		
		
			
		

	}
}

