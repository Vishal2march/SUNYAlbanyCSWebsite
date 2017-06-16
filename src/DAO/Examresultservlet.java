package DAO;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NEW.DAO.Resultexamdao;
import model.Exam;
import model.Resultofexam;

/**
 * Servlet implementation class Examresultservlet
 */
@WebServlet("/Examresultservlet")
public class Examresultservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Examresultservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("userid");
		String examname = request.getParameter("examname");
		String examresult = request.getParameter("examresult");
		Resultofexam oe=new Resultofexam();
		oe.setExamname(examname);
	oe.setExamresult(examresult);
	oe.setUserid(userid);
	Resultexamdao ddo= new Resultexamdao();
	ddo.studresult(oe);
	RequestDispatcher view = request.getRequestDispatcher("viewdeptexams.jsp");
    view.forward(request, response);
    return;
	}

}
