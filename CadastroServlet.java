import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

	@WebServlet("/CadastroServlet")
	public class CadastroServlet extends HttpServlet {
	    /**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String nome = request.getParameter("nome");
	        String idade = request.getParameter("idade");
	        String universidade = request.getParameter("universidade");
	        String curso = request.getParameter("curso");
	        String empresa = request.getParameter("empresa");
	        String cargo = request.getParameter("cargo");
	        String corFavorita = request.getParameter("cor_favorita");

	        Cookie nomeCookie = new Cookie("nome", nome);
	        Cookie idadeCookie = new Cookie("idade", idade);
	        Cookie universidadeCookie = new Cookie("universidade", universidade);
	        Cookie cursoCookie = new Cookie("curso", curso);
	        Cookie empresaCookie = new Cookie("empresa", empresa);
	        Cookie cargoCookie = new Cookie("cargo", cargo);
	        Cookie corFavoritaCookie = new Cookie("cor_favorita", corFavorita);

	        response.addCookie(nomeCookie);
	        response.addCookie(idadeCookie);
	        response.addCookie(universidadeCookie);
	        response.addCookie(cursoCookie);
	        response.addCookie(empresaCookie);
	        response.addCookie(cargoCookie);
	        response.addCookie(corFavoritaCookie);

	        response.sendRedirect("MostrarDadosServlet");
	    }
	}

