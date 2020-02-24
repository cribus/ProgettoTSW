package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CalciatoreBean;
import bean.DirigenzaBean;
import model.DirigenzaModel;


@WebServlet("/admin/StaffServlet")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	DirigenzaModel model= new DirigenzaModel();
	
    public StaffServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action= request.getParameter("action");
		try{
		if(action!=null){
			
			System.out.println(action);
			if(action.equalsIgnoreCase("delete")){
				String CF=request.getParameter("CF");
				System.out.println(CF);
				model.cancellaDirigente(CF);
			}
			
			else if(action.equalsIgnoreCase("insert")){
				String CF= request.getParameter("CF");
				String nome= request.getParameter("nome");
				String cognome= request.getParameter("cognome");
				String ruolo= request.getParameter("ruolo");
				System.out.println(ruolo);
				String num= request.getParameter("num");
				
				
				DirigenzaBean bean= new DirigenzaBean();
				bean.setID(3456);
				bean.setCF(CF);
				bean.setNome(nome);
				bean.setCognome(cognome);
				if(ruolo.equals("Direttore Sportivo")){
					bean.setDirettore_sportivo(1);
					bean.setDirettore_generale(0);
					bean.setAmministratore_Delegato(0);
				}
				else if(ruolo.equals("Direttore Generale")){
					bean.setDirettore_sportivo(0);
					bean.setDirettore_generale(1);
					bean.setAmministratore_Delegato(0);
				}
				else if(ruolo.equals("Amministratore Delegato")){
					bean.setDirettore_sportivo(0);
					bean.setDirettore_generale(0);
					bean.setAmministratore_Delegato(1);
				}				
				
				
				model.inserisciDirigente(bean,num);
			}
		
		}
	}
	catch(SQLException er){
		System.out.println("Error:"+ er.getMessage());
		request.setAttribute("error", er.getMessage());
	}
	
	RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/admin/StaffAdmin.jsp");
	dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
