package ctr;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mysql.jdbc.StringUtils;

import pojo.User;
import service.UserService;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// ��ȡ����
		String userId = request.getParameter("userId");
		String userPsw = request.getParameter("userPsw");
		String rePassword = request.getParameter("rePassword");
		String userAlice = request.getParameter("userAlice");
		String userEmail = request.getParameter("userEmail");
		String userSex = request.getParameter("userSex");
		if(StringUtils.isNullOrEmpty(userId)||
				StringUtils.isNullOrEmpty(userPsw)||
				StringUtils.isEmptyOrWhitespaceOnly(userEmail)||
				StringUtils.isNullOrEmpty(userAlice)||
				StringUtils.isNullOrEmpty(userSex)) {
			request.setAttribute("error","�κ���Ϣ������Ϊ��");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;
		}
		if(userPsw.equals(rePassword) == false) {
			request.setAttribute("error","������������벻ͬ������");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;
		}
		if(UserService.findUserByIdAndPsw(userId) != null) {
			request.setAttribute("error","�˻��Ѿ�����");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;
		}
		if(Pattern.matches("^[a-z0-9A-Z]+[-|a-z0-9A-Z._]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$", userEmail)== false)
		{
			request.setAttribute("error","�����ʽ����ȷ��");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;	
		}
		// ����User����
		User user = new User(userId, userPsw, rePassword, userAlice, userEmail,userSex, null, 0, 0, null, null, null);
				UserService.addUser(user); 
				request.getSession().setAttribute("error",user); 
				response.sendRedirect("register.jsp");
				return;
		
		
		
		/*request.getRequestDispatcher("register.jsp").forward(request, response);*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}