

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empid=request.getParameter("eid");
		String pwd=request.getParameter("pass");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String contact =request.getParameter("contact");
		
		
		insert_rec obj = new insert_rec();
		if(obj.insert(empid, pwd, fname, lname, dob, contact)) {
			response.sendRedirect("salary_det.jsp");
		}
		else {
			response.sendRedirect("error.jsp");
		}
		
	}

	

}
