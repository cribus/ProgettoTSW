package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AbbonamentiBean;
import bean.CalciatoreBean;
import model.CalciatoreModel;


@WebServlet("/admin/RosaServlet")
public class RosaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  CalciatoreModel model= new CalciatoreModel();
	
    public RosaServlet() {
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
				model.cancellaPlayer(CF);
			}
			
			else if(action.equalsIgnoreCase("insert")){
				String CF= request.getParameter("CF");
				String nome= request.getParameter("nome");
				String cognome= request.getParameter("cognome");
				String ruolo= request.getParameter("ruolo");
				int numMaglia= Integer.parseInt(request.getParameter("numMaglia"));
				String Importanza= request.getParameter("importanza");
				
				CalciatoreBean bean= new CalciatoreBean();
				bean.setCF(CF);
				bean.setNome(nome);
				bean.setCognome(cognome);
				bean.setRuolo(ruolo);
				bean.setNumMaglia(numMaglia);
				bean.setImportanza(Importanza);
				
				model.inserisciPlayer(bean);
			}
		
		}
	}
	catch(SQLException er){
		System.out.println("Error:"+ er.getMessage());
		request.setAttribute("error", er.getMessage());
	}
	
	RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/admin/RosaAdmin.jsp");
	dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
