package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Utils.Utils;

/**
 * Servlet implementation class MiServlet
 */
@WebServlet("/MiServlet")
public class MiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		boolean check = false;
		String user = request.getParameter("inputUser");
		String pass = request.getParameter("inputPassword");
		System.out.println(pass);
		String claveHasheada = Utils.hashSHA256(pass);
		System.out.println("La clave es: " + pass);
		System.out.println("La clave Hasheada es: " + claveHasheada);
		if(Utils.checkPass(pass, claveHasheada)) {
			check = true;
			System.out.println("Coinciden");
		}
	
		request.setAttribute("user", user);
		request.setAttribute("pass", pass);
		request.setAttribute("check", check);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
