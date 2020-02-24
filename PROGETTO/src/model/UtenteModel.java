package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;


import bean.UtenteBean;
import bean.UtenteBean;
/*import bean.RicetteBean;*/
import connection.DriverManagerConnectionPool;



public class UtenteModel {
	public UtenteBean checkUser(String username, String password) throws SQLException{
		int flag=0;
		int trovato=0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		UtenteBean utente=new UtenteBean();
		String query="SELECT * FROM UTENTE WHERE UsernameC=? AND Psw=?";
	
		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			ResultSet rs = preparedStatement.executeQuery();
			
			if(rs.next()) {
				flag=1;
				trovato=1;
				//System.out.println("trovatocli");
				utente=doRetrieveByUsername(username);

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
		
		return utente;
	
}

	
	
	
	/*--------------------------------------------------*/
	
	
public UtenteBean doRetrieveByUsername(String username ) throws SQLException{
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String selectSQL = "SELECT * FROM UTENTE WHERE UsernameC=?";
		UtenteBean utente= new UtenteBean();
		
		try {
			
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(selectSQL);
			
			preparedStatement.setString(1, username);
			ResultSet rs = preparedStatement.executeQuery();
			rs.next();
			utente.setCF(rs.getString("CF"));
			utente.setSurname(rs.getString("Cognome"));
			utente.setName(rs.getString("Nome"));
			utente.setMail(rs.getString("Mail"));
			utente.setUsername(rs.getString("UsernameC"));
			utente.setPassword(rs.getString("Psw"));
			utente.setAdmin(rs.getInt("Admin")); 
			//System.out.println(utente.toString());

			
			}
		
		  finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				DriverManagerConnectionPool.releaseConnection(connection);
			}
		}
		return utente;


}



//--------------------------------

public void doSave(UtenteBean cliente) throws SQLException {
	Connection connection = null;
	PreparedStatement preparedStatement = null;

	String insertSQL = "INSERT INTO UTENTE (CF,Cognome,Nome,Mail,UsernameC,Psw,Admin) VALUES (?, ?, ?, ?, ?, ? , ?)";

	try {
		connection = DriverManagerConnectionPool.getConnection();
		preparedStatement = connection.prepareStatement(insertSQL);
		preparedStatement.setString(1, cliente.getCF());
		preparedStatement.setString(2, cliente.getSurname());
		preparedStatement.setString(3, cliente.getName());
		preparedStatement.setString(4, cliente.getMail());
		preparedStatement.setString(5, cliente.getUsername());
		preparedStatement.setString(6, cliente.getPassword());
		preparedStatement.setInt(7, cliente.getAdmin());
		preparedStatement.executeUpdate();

		connection.commit();
		
	} finally {
		try {
			if (preparedStatement != null)
				preparedStatement.close();
		} finally {
			DriverManagerConnectionPool.releaseConnection(connection);
		}
	}

}

//-------------------------
public boolean alreadyExists(UtenteBean bean) throws SQLException{
	
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	String query="SELECT * FROM UTENTE WHERE UsernameC= ? OR Mail= ?";

	try {
		connection = DriverManagerConnectionPool.getConnection();
		preparedStatement = connection.prepareStatement(query);
		preparedStatement.setString(1, bean.getUsername());
		preparedStatement.setString(2, bean.getMail());
		
		ResultSet rs = preparedStatement.executeQuery();
	
		if(!rs.next()){
			return true;
		}
		
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
	return false;
}
//------------------

}
