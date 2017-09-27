package pacote;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class inserirServlet
 */
public class inserirServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inserirServlet() {
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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String inputNome = request.getParameter("nome");
		String inputAno = request.getParameter("ano");
		String inputGenero = request.getParameter("genero");
		String inputSinopse = request.getParameter("sinopse");
		Filme filme = new Filme(inputNome,inputAno,inputGenero,inputSinopse);
		ManipulaBD manipulaBD = new ManipulaBD();
		manipulaBD.addFilme(filme);
		session.setAttribute("mensagem", "Filme inserido com sucesso!");
		response.sendRedirect("menu.jsp");
	}

}
