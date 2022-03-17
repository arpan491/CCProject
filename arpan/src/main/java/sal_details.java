import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sal_details")
public class sal_details extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empid=request.getParameter("eid");
		String job=request.getParameter("jobrole");
		String msal=request.getParameter("salary");
		String bonus=request.getParameter("bonus");
		
		
		insert_sal obj = new insert_sal();
		if(obj.insert(empid, job, msal, bonus)) {
			response.sendRedirect("login.jsp");
		}
		else {
			response.sendRedirect("error.jsp");
		}
	}
}
