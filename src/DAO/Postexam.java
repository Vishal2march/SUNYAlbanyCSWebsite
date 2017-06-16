package DAO;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Exam;
import NEW.DAO.Examdao;

/**
 * Servlet implementation class Postexam
 */
@WebServlet("/Postexam")
public class Postexam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Postexam() {
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
		String userid=(String) session.getAttribute("userid");
		String examname = request.getParameter("examname");
		String examdate = request.getParameter("examdate");
		String link = request.getParameter("link");
		
		Exam t=new Exam();
		t.setExamname(examname);
		t.setExamdate(examdate);
		t.setLink(link);
		t.setUserid(userid);
		Examdao ddao= new Examdao();
		
		
		ddao.exampost(t);
		//request.setAttribute("examname", ddao.exampost(examname));
		//request.setAttribute("examdate", ddao.exampost());
		//request.setAttribute("link", ddao.exampost());
        RequestDispatcher view = request.getRequestDispatcher("Examview.jsp");
        view.forward(request, response);
        return;
    }
	
	
	}


