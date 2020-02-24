package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;

import bean.CalciatoreBean;
import connection.DriverManagerConnectionPool;

public class CalciatoreModel {
	
	public Collection<CalciatoreBean> doRetrieveAll() throws SQLException {
		Connection connection =null;
		PreparedStatement preparedStatement =null;
		
		 Collection<CalciatoreBean> products =new LinkedList<CalciatoreBean>();
		 
		 String selectSQL="SELECT * FROM CALCIATORE";
		 
		 try{
			 connection = DriverManagerConnectionPool.getConnection();
			 preparedStatement= connection.prepareStatement(selectSQL);
			 
			 ResultSet rs= preparedStatement.executeQuery();
			 
			 while(rs.next()){
				 CalciatoreBean bean= new CalciatoreBean();
				 
				 bean.setCF(rs.getString("CF"));
				 bean.setNome(rs.getString("nome"));
				 bean.setCognome(rs.getString("cognome"));
				 bean.setRuolo(rs.getString("ruolo"));
				 bean.setNumMaglia(rs.getInt("Numero_maglia"));
				 bean.setImportanza(rs.getString("importanza"));
				 
				 products.add(bean);
			 }
			 
		 } 
		 finally{
		
			 try{
				 if(preparedStatement!=null)
					 preparedStatement.close();
			 }
			 finally{
				 DriverManagerConnectionPool.releaseConnection(connection);
			 }		 
		 }
		  
		return products;
	}
	
	
	public void cancellaPlayer(String CF) throws SQLException{
		Connection connection =null;
		PreparedStatement preparedStatement =null;
		
		 Collection<CalciatoreBean> products =new LinkedList<CalciatoreBean>();
		 
		 String selectSQL="DELETE FROM CALCIATORE WHERE CF=?";
		 
		 try{
			 connection = DriverManagerConnectionPool.getConnection();
			 preparedStatement= connection.prepareStatement(selectSQL);
			 
				preparedStatement.setString(1, CF);
				preparedStatement.executeUpdate();
				connection.commit();
			 
		 } 
		 finally{
		
			 try{
				 if(preparedStatement!=null)
					 preparedStatement.close();
			 }
			 finally{
				 DriverManagerConnectionPool.releaseConnection(connection);
			 }		 
		 }
	}
	
	
	public void inserisciPlayer(CalciatoreBean bean) throws SQLException{
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String query="INSERT INTO CALCIATORE(CF,Nome,Cognome,Ruolo,Numero_maglia,Importanza,SIGLA) VALUES(?,?,?,?,?,?,?)";
		
		try {

			
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, bean.getCF());
			preparedStatement.setString(2, bean.getNome());
			preparedStatement.setString(3, bean.getCognome());
			preparedStatement.setString(4, bean.getRuolo());
			preparedStatement.setInt(5, bean.getNumMaglia());
			preparedStatement.setString(6, bean.getImportanza());
			preparedStatement.setString(7, "FCJ");
			
			preparedStatement.executeUpdate();
			connection.commit();
			
			preparedStatement.close();
			
		}
			
		
		
		 finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				DriverManagerConnectionPool.releaseConnection(connection);
			}
		}
	}
}
