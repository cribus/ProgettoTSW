package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;

import bean.PartiteBean;
import connection.DriverManagerConnectionPool;

public class PartiteModel {
	
	public Collection<PartiteBean> doRetrieveAll() throws SQLException {
		Connection connection =null;
		PreparedStatement preparedStatement =null;
		
		 Collection<PartiteBean> products =new LinkedList<PartiteBean>();
		 
		 String selectSQL="SELECT * FROM partita";
		 
		 try{
			 connection = DriverManagerConnectionPool.getConnection();
			 preparedStatement= connection.prepareStatement(selectSQL);
			 
			 ResultSet rs= preparedStatement.executeQuery();
			 
			 while(rs.next()){
				 PartiteBean bean= new PartiteBean();
				 
				 bean.setCOD(rs.getString("COD"));
				 bean.setIncasso(rs.getDouble("Incasso"));
				 bean.setLuogo(rs.getString("Luogo"));
				 bean.setPdata(rs.getString("Pdata"));
				 bean.setRisultato(rs.getString("Risultato"));
				 bean.setSquadra_avversaria(rs.getString("Squadra_avversaria"));
				 
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
	
	
	public void aggiungiPartita(PartiteBean bean) throws SQLException{
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		int COD=0;;
		String query="SELECT max(COD) FROM PARTITA ";
		
		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			ResultSet rs;
			rs= preparedStatement.executeQuery();
			if(rs.next()){
					COD=rs.getInt("max(COD)")+1;
		}
			
			query="INSERT INTO PARTITA(COD,Pdata,Incasso,Luogo,Risultato,Squadra_avversaria) VALUES(?,?,?,?,?,?)";
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setInt(1, COD);
			preparedStatement.setString(2, bean.getPdata());
			preparedStatement.setDouble(3, bean.getIncasso());
			preparedStatement.setString(4, bean.getLuogo());
			preparedStatement.setString(5, bean.getRisultato());
			preparedStatement.setString(6, bean.getSquadra_avversaria());
			
			
			preparedStatement.executeUpdate();
			connection.commit();
			
			query="INSERT INTO disputa(SIGLA, COD) VALUES(?,?)";
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, "FCJ");
			preparedStatement.setInt(2, COD);
	
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
