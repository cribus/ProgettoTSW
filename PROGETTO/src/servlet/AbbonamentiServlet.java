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

import model.AbbonamentiModel;

/**
 * Servlet implementation class AbbonamentiServlet
 */
@WebServlet("/admin/AbbonamentiServlet")
public class AbbonamentiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AbbonamentiModel model= new AbbonamentiModel();
	
	
    public AbbonamentiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action= request.getParameter("action");
		try{
		if(action!=null){
			
			System.out.println(action);
			if(action.equalsIgnoreCase("delete")){
				String periodo=request.getParameter("periodo");
				System.out.println(periodo);
				model.cancellaAbb(periodo);
			}
			
			else if(action.equalsIgnoreCase("insert")){
				String periodo= request.getParameter("periodo");
				System.out.println(periodo);
				double price=Double.parseDouble(request.getParameter("prezzo"));
				System.out.println(price);
				
				
				AbbonamentiBean bean= new AbbonamentiBean();
				bean.setID(0);
				bean.setPeriodo(periodo);;
				bean.setPrezzo(price);
				
				model.inserisciAbb(bean);
			}
		
		}
	}
	catch(SQLException er){
		System.out.println("Error:"+ er.getMessage());
		request.setAttribute("error", er.getMessage());
	}
	
	RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/admin/AbbonamentiAdmin.jsp");
	dispatcher.forward(request, response);
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
