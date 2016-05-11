package com.enterprisedatabase.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.enterprisedatabase.dao.EmployeeDAO;

/**
 * Servlet implementation class EmployeeLoginServlet
 */
@WebServlet(name = "employeeloginservlet", urlPatterns = { "/employeeloginservlet" })
public class EmployeeLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLoginServlet() {
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
		String employeeNumber = request.getParameter("employeeid");
		String employeePasswordName = request.getParameter("employeepwd");   
	    PrintWriter printWriter= response.getWriter();   
		try
		{		
			EmployeeDAO employeeDAO = new EmployeeDAO();
		    boolean isValid = employeeDAO.isIdValidEmployee(Integer.parseInt(employeeNumber));
		    if(isValid)
			{
		    	boolean loginPass = employeeDAO.employeeLogin(Integer.parseInt(employeeNumber), employeePasswordName);
		    	if(loginPass == true)
		    	{
		    		String htmlRespone = "<html>";
				    htmlRespone += "<h2>Login is successful</h2>";
				    htmlRespone += "</html>";		     
				    printWriter.println(htmlRespone);
				    response.sendRedirect("employeeIndex.html"); 
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
			    htmlRespone1 += "<h2><b>There are no employees under the</b> </br> Employee Id: " + employeeNumber + "</h2>";
			    htmlRespone1 += "</html>";
			    printWriter.println(htmlRespone1);
		    }   
		}
		catch(Exception e)
		{
			String htmlRespone = "<html>";
		    htmlRespone += "<h2>There are no employees with Employee Id: " + employeeNumber + "</h2>";
		    htmlRespone += "</html>";
		     
		    printWriter.println(htmlRespone);
		}	 
	}
	}

