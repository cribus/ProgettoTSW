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
/*import model.CartModel;*/

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UtenteBean bean=(UtenteBean)request.getSession().getAttribute("bean");
		/*CartModel cart= new CartModel();*/
		//request.getSession().setAttribute("bean", bean);
		if(bean.getAdmin()==0){

			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/HomeLogged.jsp");
			dispatcher.forward(request, response);
		}
		else if(bean.getAdmin()==1){
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/admin/HomeLoggedAdmin.jsp");
			dispatcher.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
