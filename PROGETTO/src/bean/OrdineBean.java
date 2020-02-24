package bean;

public class OrdineBean {
	private int Codice;
	private String Data;
	private String Ora;
	private int ID;
	private String CF;
	
	
	public OrdineBean(){
		Codice=10;
		Data="";
		Ora="";
		ID=00;
		CF="";
	}
	
	public OrdineBean(int aCode, String aDate, String anHour, int aID, String aCF){
		Codice=aCode;
		Data=aDate;
		Ora=anHour;
		ID=aID;
		CF=aCF;
	}

	@Override
	public String toString() {
		return "OrdineBean [Codice=" + Codice + ", Data=" + Data + ", Ora=" + Ora + ", ID=" + ID 
				+ ", CFCliente=" + CF + "]";
	}

	public int getCodice() {
		return Codice;
	}

	public void setCodice(int codice) {
		Codice = codice;
	}

	public String getData() {
		return Data;
	}

	public void setData(String data) {
		Data = data;
	}

	public String getOra() {
		return Ora;
	}

	public void setOra(String ora) {
		Ora = ora;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}


	public String getCF() {
		return CF;
	}

	public void setCF(String cF) {
		CF = cF;
	}

}

