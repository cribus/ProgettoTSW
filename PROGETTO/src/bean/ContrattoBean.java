package bean;

public class ContrattoBean {
	
	private String Modalità;
	private int Stipendio;
	private int Scadenza;
	private int ID;
	
	
	public ContrattoBean(){
		Modalità="";
		Stipendio=0;
		Scadenza=0;
		ID=0;
		
	}
	
	public ContrattoBean(String aModalità, int aStipendio, int aScadenza, int aID){
		Modalità=aModalità;
		Stipendio=aStipendio;
		Scadenza=aScadenza;
		ID=aID;
		
	}

	public String getModalità() {
		return Modalità;
	}

	public void setModalità(String modalità) {
		Modalità= modalità;
	}

	public int getStipendio() {
		return Stipendio;
	}

	public void setStipendio(int stipendio) {
		Stipendio = stipendio;
	}

	public int getScadenza() {
		return Scadenza;
	}

	public void setScadenza(int scadenza) {
		Scadenza = scadenza;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	
}
