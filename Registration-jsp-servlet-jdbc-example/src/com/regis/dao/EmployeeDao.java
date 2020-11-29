package com.regis.dao;

import java.sql.*;

import com.mysql.jdbc.Connection;
import com.regis.model.Employee;

public class EmployeeDao {

	public int registerEmployee(Employee employee) throws ClassNotFoundException {
		
		String sql = "INSERT INTO employee" + 
		"(id, first_name, last_name, username, password, address, contact)VALUES"+
				"(?,?,?,?,?,?,?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		try {
			java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees", "root", "root123");
			
			PreparedStatement prepareStatement = connection.prepareStatement(sql);{
				prepareStatement.setInt(1, 5);
				prepareStatement.setString(2, employee.getFirstName());
				prepareStatement.setString(3, employee.getLastName());
				prepareStatement.setString(4, employee.getUsername());
				prepareStatement.setString(5, employee.getPassword());
				prepareStatement.setString(6, employee.getAddress());
				prepareStatement.setString(7, employee.getContact());
				
				System.out.println(prepareStatement);
				result = prepareStatement.executeUpdate();
				
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return result;
		
	}
}
