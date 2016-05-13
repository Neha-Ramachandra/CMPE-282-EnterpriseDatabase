package com.enterprisedatabase.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.enterprisedatabase.model.Payment;


public class PaymentDAO
{
    public List<Payment> listAllPayment()
    {
        List<Payment> allpayments = new ArrayList<Payment>();

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection con = DriverManager.getConnection("jdbc:mysql://my-db-instance.ct2edikokwo4.us-west-2.rds.amazonaws.com:3306/classicmodels", "db_user", "db_admin");

            PreparedStatement preparedStatement = con.prepareStatement("select * from payments order by checkNumber asc");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Payment payments = new Payment();
                payments.setAmount(resultSet.getInt(4));
                payments.setPaymentDate(resultSet.getDate(3));
                payments.setCheckNumber(resultSet.getString(2));

                allpayments.add(payments);
            }
        }
        catch (Exception  e)
        {
            e.printStackTrace();
        }
        return allpayments;
    }

  //check whether a particular customer has made payments
  	public boolean isIdValidCustomer(Integer customerNumberToBeModified) throws Exception,IllegalAccessException
  	{
  		Class.forName("com.mysql.jdbc.Driver").newInstance();

          Connection con = DriverManager.getConnection("jdbc:mysql://my-db-instance.ct2edikokwo4.us-west-2.rds.amazonaws.com:3306/classicmodels", "db_user", "db_admin");

          Statement st = con.createStatement();
  		 
  		ResultSet rs= st.executeQuery("select * from payments where customerNumber ="+customerNumberToBeModified+"");
  		//checking for existance of user entered pin
  		return rs.isBeforeFirst();
  		 
  			         
  	}
  	
    public List<Payment> findPaymentDetailsOfACustomer(Integer customerId)
    {
        PreparedStatement preparedStatement;
        

        List<Payment> allPaymentInfo = new ArrayList<Payment>();
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection con = DriverManager.getConnection("jdbc:mysql://my-db-instance.ct2edikokwo4.us-west-2.rds.amazonaws.com:3306/classicmodels", "db_user", "db_admin");

            Statement st = con.createStatement();

            ResultSet rs= st.executeQuery("select * from payments where customerNumber="+customerId+" ");

            if(rs.next())
            {
            	 while(rs.next()){
                     preparedStatement = con.prepareStatement("select * from payments where customerNumber="+customerId+" ");
                     preparedStatement.execute();
                     Payment payments = new Payment();
                     
                     
                     payments.setCheckNumber(rs.getString(2));
                     payments.setPaymentDate(rs.getDate(3));
                     payments.setAmount(rs.getInt(4));

                     allPaymentInfo.add(payments);
                 }
            }  
            else
            {
                System.out.println("Customer Id you entered does not have payment history!");
            }

        }

        catch (Exception  e)
        {
            System.out.println("Invalid input");
        }
        return allPaymentInfo;
    }

}
