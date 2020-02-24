package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrdineModel;


@WebServlet("/user/AcquistoServlet")
public class AcquistoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      OrdineModel model= new OrdineModel(); 

    public AcquistoServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String periodo=(String) request.getSession().getAttribute("periodo");
		String username=(String) request.getSession().getAttribute("username");
		System.out.println(username);
		try {
			System.out.println("provo metodo");
			model.salvaOrdine(username, periodo);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AcquistoCompleto.jsp"); 
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
