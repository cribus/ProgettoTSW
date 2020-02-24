package bean;


public class PartiteBean {

	private String COD;
	private String Pdata;
	private double Incasso;
	private String Luogo;
	private String Risultato;
	private String Squadra_avversaria;
	
	public PartiteBean(){
		COD="";
		Pdata="";
		Incasso=0;
		Luogo="";
		Risultato="";
		Squadra_avversaria="";
	}
	
	public PartiteBean(String aCOD, String aPdata, double aIncasso, String aLuogo,String aRisultato, String aSquadra_avversaria){
		COD=aCOD;
		Pdata=aPdata;
		Incasso=aIncasso;
		Luogo=aLuogo;
		Risultato=aRisultato;
		Squadra_avversaria=aSquadra_avversaria;
		
	}


	public String getCOD() {
		return COD;
	}

	public void setCOD(String cOD) {
		COD = cOD;
	}

	public String getPdata() {
		return Pdata;
	}

	public void setPdata(String pdata) {
		Pdata = pdata;
	}

	public double getIncasso() {
		return Incasso;
	}

	public void setIncasso(double incasso) {
		Incasso = incasso;
	}

	public String getLuogo() {
		return Luogo;
	}

	public void setLuogo(String luogo) {
		Luogo = luogo;
	}

	public String getRisultato() {
		return Risultato;
	}

	public void setRisultato(String risultato) {
		Risultato = risultato;
	}

	public String getSquadra_avversaria() {
		return Squadra_avversaria;
	}

	public void setSquadra_avversaria(String squadra_avversaria) {
		Squadra_avversaria = squadra_avversaria;
	}

	@Override
	public String toString() {
		return "PartiteBean [COD=" + COD + ", Pdata=" + Pdata + ", Incasso=" + Incasso + ", Luogo=" + Luogo
				+ ", Risultato=" + Risultato + ", Squadra_avversaria=" + Squadra_avversaria + "]";
	}

	
}
