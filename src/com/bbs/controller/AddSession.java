package com.bbs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.pojo.Plate;
import com.bbs.service.AdminService;
import com.mysql.jdbc.StringUtils;

@WebServlet("/AddSession")
public class AddSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService adminService = new AdminService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String plateTitle = request.getParameter("plateTitle");
		String plateMessage = request.getParameter("plateMessage");
		Plate plate=new Plate(null,plateTitle,plateMessage,null);
		if(StringUtils.isNullOrEmpty(plateTitle) || StringUtils.isNullOrEmpty(plateMessage)) {
			request.setAttribute("message","填入的内容不能为空");
			request.getRequestDispatcher("grid.jsp").forward(request, response);
			return;
		}
		adminService.addPlateTitleAndPlateMessage(plate);
		request.setAttribute("message","添加成功");
		request.getRequestDispatcher("grid.jsp").forward(request, response);;
		return;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
