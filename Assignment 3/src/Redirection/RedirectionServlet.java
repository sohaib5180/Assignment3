package Redirection;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectionServlet
 */
@WebServlet("/RedirectionServlet")
public class RedirectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedirectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String CSR_submission = request.getParameter("CSRformsub");
			String Customer_submission = request.getParameter("Customerformsub");
			
			if(Customer_submission.compareToIgnoreCase("Submit")==0) {
				RequestDispatcher rq = request.getRequestDispatcher("");
				rq.forward(request, response);
			}
			else if(Customer_submission.compareToIgnoreCase("Register")==0) {
				RequestDispatcher rq = request.getRequestDispatcher("Customer_form.jsp");
				rq.forward(request, response);
			}
			else {
				
			}
			
			if(CSR_submission.compareToIgnoreCase("Submit")==0) {
				RequestDispatcher rq = request.getRequestDispatcher("");
				rq.forward(request, response);
			}
			else if(CSR_submission.compareToIgnoreCase("Register")==0) {
				RequestDispatcher rq = request.getRequestDispatcher("");
				rq.forward(request, response);
			}
			else {
				
			}
			
		}catch (Exception ex) {
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
