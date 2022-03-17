import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Login_auth dao = new Login_auth();
		String emp_id=request.getParameter("eid");
		String pwd=request.getParameter("pass");
		if(dao.check(emp_id,pwd))
		{
//			HttpSession session = request.getSession();
//			session.setAttribute("username",uname);
			response.sendRedirect("Record.jsp");

		}
		else
		{
			response.sendRedirect("login.jsp");

		}

	}
}
