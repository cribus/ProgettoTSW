package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;

import connection.DriverManagerConnectionPool;
import bean.CalciatoreBean;
import bean.DirigenzaBean;
public class DirigenzaModel {

	
	public Collection<DirigenzaBean> doRetrieveAll() throws SQLException {
		Connection connection =null;
		PreparedStatement preparedStatement =null;
		
		 Collection<DirigenzaBean> products =new LinkedList<DirigenzaBean>();
		 
		 String selectSQL="SELECT * FROM Dirigenza";
		 
		 try{
			 connection = DriverManagerConnectionPool.getConnection();
			 preparedStatement= connection.prepareStatement(selectSQL);
			 
			 ResultSet rs= preparedStatement.executeQuery();
			 
			 while(rs.next()){
				 DirigenzaBean bean= new DirigenzaBean();
				 
				 bean.setID(rs.getInt("ID"));
				 bean.setCF(rs.getString("CF"));
				 bean.setNome(rs.getString("Nome"));
				 bean.setCognome(rs.getString("Cognome"));
				 bean.setDirettore_sportivo(rs.getInt("Direttore_sportivo"));
				 bean.setDirettore_generale(rs.getInt("Direttore_generale"));
				 bean.setAmministratore_Delegato(rs.getInt("Amministratore_Delegato"));
				 
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
	
	public String trovaTelefono(int ID) throws SQLException{
		Connection connection =null;
		PreparedStatement preparedStatement =null;
		
		 Collection<DirigenzaBean> products =new LinkedList<DirigenzaBean>();
		 String numero="";
		 String selectSQL="SELECT NUMERO FROM TELEFONO WHERE ID=?";
		 
		 try{
			 connection = DriverManagerConnectionPool.getConnection();
			 preparedStatement= connection.prepareStatement(selectSQL);
			 preparedStatement.setInt(1, ID);
			 ResultSet rs= preparedStatement.executeQuery();
			 
			 while(rs.next()){
				 numero=rs.getString("NUMERO");
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
		  
		return numero;
	}
	
	
	public void cancellaDirigente(String CF) throws SQLException{
		Connection connection =null;
		PreparedStatement preparedStatement =null;
		
		 Collection<CalciatoreBean> products =new LinkedList<CalciatoreBean>();
		 
		 String selectSQL="DELETE FROM DIRIGENZA WHERE CF=?";
		 
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
	
	public void inserisciDirigente(DirigenzaBean bean, String num) throws SQLException{
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String query="INSERT INTO DIRIGENZA(ID,CF,Nome,Cognome,Direttore_sportivo,Direttore_generale,Amministratore_Delegato) VALUES(?,?,?,?,?,?,?)";
		
		try {

			
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setInt(1, bean.getID());
			preparedStatement.setString(2, bean.getCF());
			preparedStatement.setString(3, bean.getNome());
			preparedStatement.setString(4, bean.getCognome());
			preparedStatement.setInt(5, bean.getDirettore_sportivo());
			preparedStatement.setInt(6, bean.getDirettore_generale());
			preparedStatement.setInt(7, bean.getAmministratore_Delegato());
			
			preparedStatement.executeUpdate();
			connection.commit();
			
			query="INSERT INTO TELEFONO(NUMERO,CF) VALUES(?,?)";
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, num);
			preparedStatement.setString(2, bean.getCF());
			
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
