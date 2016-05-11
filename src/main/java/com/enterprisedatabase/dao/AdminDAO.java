package com.enterprisedatabase.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class AdminDAO 
{
	//check whether a particular customer has placed orders
		public boolean isIdValidAdmin(Integer adminNumberToBeModified) throws Exception,IllegalAccessException
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();

	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels", "root", "admin");

	        Statement st = con.createStatement();
			 
			ResultSet rs= st.executeQuery("select * from admins where adminNumber ="+adminNumberToBeModified+"");
			//checking for existance of user entered pin
			return rs.isBeforeFirst();
			 
				         
		}
		
		
		public boolean adminLogin(Integer adminId,String adminNamePassword) throws Exception,IllegalAccessException
		{
				Class.forName("com.mysql.jdbc.Driver").newInstance();

				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels", "root", "admin");

					PreparedStatement preparedStatement = con.prepareStatement("select * from admins where adminNumber = "+adminId+" AND firstName= \""+adminNamePassword+"\"");
					ResultSet resultSet = preparedStatement.executeQuery();
					return resultSet.isBeforeFirst();		
		}

}
