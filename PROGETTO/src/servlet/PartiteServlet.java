package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.PartiteBean;
import model.PartiteModel;


@WebServlet("/admin/PartiteServlet")
public class PartiteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      PartiteModel model= new PartiteModel();
  
    public PartiteServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String squadraavversaria=request.getParameter("SquadraAvversaria");
		String risultato=request.getParameter("risultato");
		String luogo=request.getParameter("luogo");
		Double incasso=Double.parseDouble(request.getParameter("incasso"));
		String data=request.getParameter("data");
	
		PartiteBean bean= new PartiteBean();
		
		bean.setIncasso(incasso);
		bean.setLuogo(luogo);
		bean.setPdata(data);
		bean.setRisultato(risultato);
		bean.setSquadra_avversaria(squadraavversaria);
		System.out.println("provo metodo");
		try {
			model.aggiungiPartita(bean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/PartiteAdmin.jsp"); 
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
