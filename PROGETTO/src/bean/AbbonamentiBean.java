package bean;

public class AbbonamentiBean {

		private int ID;
		private String periodo;
		private double prezzo;
		
		public AbbonamentiBean(){
			ID=00;
			periodo="";
			prezzo=0;
		}
		
		public AbbonamentiBean(int anID, String aPeriod, float aPrice){
			ID=anID;
			periodo=aPeriod;
			prezzo=aPrice;
		}

		public int getID() {
			return ID;
		}

		public void setID(int iD) {
			ID = iD;
		}

		public String getPeriodo() {
			return periodo;
		}

		public void setPeriodo(String periodo) {
			this.periodo = periodo;
		}

		public double getPrezzo() {
			return prezzo;
		}

		public void setPrezzo(double price) {
			this.prezzo = price;
		}

		@Override
		public String toString() {
			return "AbbonamentiBean [ID=" + ID + ", periodo=" + periodo + ", prezzo=" + prezzo + "]";
		}
		
		
		
}
