package com.enterprisedatabase.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.enterprisedatabase.dao.AdminDAO;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/adminloginservlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
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
		doGet(request, response);
		
		String adminNumber = request.getParameter("adminid");
		String adminPasswordName = request.getParameter("adminpwd");   
	    PrintWriter printWriter= response.getWriter();   
		try
		{		
			AdminDAO adminDAO = new AdminDAO();
		    boolean isValid = adminDAO.isIdValidAdmin(Integer.parseInt(adminNumber));
		    if(isValid)
			{
		    	boolean loginPass = adminDAO.adminLogin(Integer.parseInt(adminNumber), adminPasswordName);
		    	if(loginPass == true)
		    	{
		    		String htmlRespone = "<html>";
				    htmlRespone += "<h2>Login is successful</h2>";
				    htmlRespone += "</html>";		     
				    printWriter.println(htmlRespone);
				    response.sendRedirect("adminindex.html"); 
		    	}
		    	
		    	else
		    	{
		    		String htmlRespone = "<html>";
				    htmlRespone += "<h2>Login failed. Please try again!</h2>";
				    htmlRespone += "</html>";		     
				    printWriter.println(htmlRespone);
				    //response.sendRedirect("/index.html"); 
				    
		    	}
		    	
//				List<Customer> customerdetails = customerDAO.findCustomer(Integer.parseInt(customerNumber));
//					request.setAttribute("customerdetails", customerdetails);
//					request.getRequestDispatcher("/WEB-INF/JSPs/updatedcustomerslist.jsp").forward(request, response);
			}
		    else
		    {
		    	String htmlRespone1 = "<html>";
			    htmlRespone1 += "<h2><b>There are no admins under the</b> </br> Admin Id: " + adminNumber + "</h2>";
			    htmlRespone1 += "</html>";
			    printWriter.println(htmlRespone1);
		    }   
		}
		catch(Exception e)
		{
			String htmlRespone = "<html>";
		    htmlRespone += "<h2>There are no employees with Admin Id: " + adminNumber + "</h2>";
		    htmlRespone += "</html>";
		     
		    printWriter.println(htmlRespone);
		}	 
	}
	}


