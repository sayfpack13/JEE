

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	String user,pass,msg="";
	boolean error;
	
    public Login() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		user=request.getParameter("username");
		pass=request.getParameter("password");
		error=true;

		if(user==null || pass==null) {
			error=false;
			msg="";
		}
		else if(user.isEmpty() || pass.isEmpty()) {
			msg="Please fill out the fields";
		}
		else if(!user.matches("sayf")) {
			msg="Wrong username";
		}else if(!pass.matches("sayf")) {
			msg="Wrong password";
		}else {
			msg="Welcome "+user;
			error=false;
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("error", error);
		request.getRequestDispatcher("Login.jsp").forward(request, response);
		
	}




}
