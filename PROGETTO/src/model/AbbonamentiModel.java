package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;

import bean.AbbonamentiBean;
import bean.UtenteBean;
import connection.DriverManagerConnectionPool;

public class AbbonamentiModel {
	AbbonamentiBean abbo= new AbbonamentiBean();
	
	
		public float trovaPrezzo(int ID) throws SQLException{
			float prezzo=0;
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			UtenteBean utente=new UtenteBean();
			String query="SELECT PREZZO FROM ABBONAMENTI WHERE ID=?";
			System.out.println(ID);
			try {
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, ID);
				ResultSet rs = preparedStatement.executeQuery();
				
				if(rs.next()) {
					prezzo=rs.getFloat("PREZZO");
					

				}
				preparedStatement.close();
			}
				
			
			catch(Exception e){
				System.out.println("Errore connessione");
			}
			 finally {
				try {
					if (preparedStatement != null)
						preparedStatement.close();
				} finally {
					DriverManagerConnectionPool.releaseConnection(connection);
				}
			}
			
			return prezzo;
		
		}
		
		public int trovaID(String periodo) throws SQLException{
			int ID=0;
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			UtenteBean utente=new UtenteBean();
			String query="SELECT ID FROM ABBONAMENTI WHERE PERIODO=?";
		
			try {
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, periodo );
				ResultSet rs = preparedStatement.executeQuery();
				
				if(rs.next()) {
					ID=rs.getInt("ID");
					System.out.println("ID="+ID);
				}
				preparedStatement.close();
			}
				
			
			catch(Exception e){
				System.out.println("Errore connessione");
			}
			 finally {
				try {
					if (preparedStatement != null)
						preparedStatement.close();
				} finally {
					DriverManagerConnectionPool.releaseConnection(connection);
				}
			}
			
			return ID;
		
		}
		
		public void inserisciAbb(AbbonamentiBean bean) throws SQLException{
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			int ID=0;
			String query="SELECT max(ID) FROM ABBONAMENTI";
			System.out.println("metodo start");
			try {
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				ResultSet rs = preparedStatement.executeQuery();
				
				if(rs.next()) {
					ID=rs.getInt("max(ID)")+1;
					System.out.println(ID);
				}
				
				
				query="INSERT INTO ABBONAMENTI(ID,PERIODO,PREZZO) VALUES(?,?,?)";
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				
				preparedStatement.setInt(1, ID);
				preparedStatement.setString(2, bean.getPeriodo());
				preparedStatement.setDouble(3, bean.getPrezzo());
				
				preparedStatement.executeUpdate();
				connection.commit();
				
				preparedStatement.close();
				
			}
				
			
			catch(Exception e){
				System.out.println("Errore connessione");
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
		
		
		
		public void cancellaAbb(String periodo) throws SQLException{
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			int ID=trovaID(periodo);
			String query="DELETE FROM ABBONAMENTI WHERE ID=?";
			System.out.println(periodo);
			try {
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, ID);
				preparedStatement.executeUpdate();
				connection.commit();
			
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
		
		
		public Collection<String> doRetrieveAll() throws SQLException {
			Connection connection =null;
			PreparedStatement preparedStatement =null;
			
			 Collection<String> products =new LinkedList<String>();
			 
			 String selectSQL="SELECT PERIODO FROM ABBONAMENTI";
			 
			 
			 try{
				 connection = DriverManagerConnectionPool.getConnection();
				 preparedStatement= connection.prepareStatement(selectSQL);
			
				 
				 ResultSet rs= preparedStatement.executeQuery();
				 
				 while(rs.next()){
					
					 products.add(rs.getString("Periodo"));
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
		
}
