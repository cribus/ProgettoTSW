package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import bean.UtenteBean;
import connection.DriverManagerConnectionPool;

public class OrdineModel {
	AbbonamentiModel model= new AbbonamentiModel();
	UtenteModel umodel=new UtenteModel();
	
		public void salvaOrdine(String username,String periodo) throws SQLException{
			Connection connection = null;
			int Cod=0;
			PreparedStatement preparedStatement = null;
			UtenteBean utente=new UtenteBean();
			utente=umodel.doRetrieveByUsername(username);
			String query="SELECT max(Codice) FROM ordine";
			
			try{
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				ResultSet rs;
				rs= preparedStatement.executeQuery();
				if(rs.next()){
						Cod=rs.getInt("max(Codice)")+1;
			}
	
				query="INSERT INTO ordine(Codice,Data,Ora,ID,CF) VALUES(?,?,?,?,?)";
				
				connection = DriverManagerConnectionPool.getConnection();
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, Cod);
				preparedStatement.setString(2, getDateTime());
				preparedStatement.setString(3, getOraAttuale());
				preparedStatement.setInt(4, model.trovaID(periodo));
				preparedStatement.setString(5, utente.getCF());
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
		
		
		
		private String getDateTime(){
			DateFormat dateFormat= new SimpleDateFormat("dd-MM-yyyy");
			Date date= new Date();
			return dateFormat.format(date);
		}
		
		public String getOraAttuale()
		{
			java.util.TimeZone t=java.util.TimeZone.getTimeZone("ECT");
			java.util.Calendar oggi = java.util.Calendar.getInstance(t);
		
			String s = "";
			String minuti = "" + oggi.get(oggi.MINUTE);
			String ora = "" +oggi.get(oggi.HOUR_OF_DAY);
		
			if (minuti.length() == 1)
			minuti = "0" + minuti;
			if (ora.length() == 1)
			ora = "0" + ora;
			s=ora + ":" + minuti;
		
			return s;
		}
		
		
}
