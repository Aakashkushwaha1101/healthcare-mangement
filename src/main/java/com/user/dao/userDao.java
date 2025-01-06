package com.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class userDao {
	private String jdbcURL="jdbc:/mysql://localhost:3306/hospitalmanage";
	private String jdbcUserName="root";
	private String jdbcUserPass="root123";
	private String jdbcPassword;
	
	private static final String INSERT_USER_SQL= " INSERT INTO Hospitals" + " (Hospital_ID,Hospital_Name,Hospital_Address,Phone) VALUES" +"(?,?,?,?);";
	
	private static final String SELECT_USER_BY_ID="SELECT * FROM Hospitals WHERE ID=?;";
	private static final String SELECT_ALL_USER="SELECT * FROM Hospitals;";
	private static final String DELETE_ALL_DATA="DELETE FROM HOSPITALS WHERE ID=?;";
	
	public userDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Connection getConnection()
	{

		Connection connection=null;

	

		try

		{

			Class.forName("com.mysql.cj.jdbc.Driver");

	

			connection=DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);


	
		}

		catch (SQLException | ClassNotFoundException e)

	
		{ 
			e.printStackTrace();

	
		}

	
		catch(Exception e)

	
		{ 
			e.printStackTrace();

		}
		return connection;

	}
	

}
