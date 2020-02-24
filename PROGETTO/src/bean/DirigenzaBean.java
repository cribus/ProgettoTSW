package bean;

public class DirigenzaBean {
		private int ID;
		private String CF;
		private String nome;
		private String cognome;
		private int Direttore_sportivo;
		private int Direttore_generale;
		private int Amministratore_Delegato;
		
		
		public DirigenzaBean(){
			ID=0;
			CF="";
			nome="";
			cognome="";
			Direttore_sportivo=0;
			Direttore_generale=0;
			Amministratore_Delegato=0;
		}
		
		public DirigenzaBean(int anID, String aCF, String aName, String aSurname,int ds, int dg, int ad){
			ID=anID;
			CF=aCF;
			nome=aName;
			cognome=aSurname;
			Direttore_sportivo=ds;
			Direttore_generale=dg;
			Amministratore_Delegato=ad;
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

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getCognome() {
			return cognome;
		}

		public void setCognome(String cognome) {
			this.cognome = cognome;
		}

		public int getDirettore_sportivo() {
			return Direttore_sportivo;
		}

		public void setDirettore_sportivo(int direttore_sportivo) {
			Direttore_sportivo = direttore_sportivo;
		}

		public int getDirettore_generale() {
			return Direttore_generale;
		}

		public void setDirettore_generale(int direttore_generale) {
			Direttore_generale = direttore_generale;
		}

		public int getAmministratore_Delegato() {
			return Amministratore_Delegato;
		}

		public void setAmministratore_Delegato(int amministratore_Delegato) {
			Amministratore_Delegato = amministratore_Delegato;
		}

		@Override
		public String toString() {
			return "DirigenzaBean [ID=" + ID + ", CF=" + CF + ", nome=" + nome + ", cognome=" + cognome
					+ ", Direttore_sportivo=" + Direttore_sportivo + ", Direttore_generale=" + Direttore_generale
					+ ", Amministratore_Delegato=" + Amministratore_Delegato + "]";
		}
		
		
}
