package bean;

public class TelefonoBean {

		private String numero;
		private String CF;
		
		public TelefonoBean(){
			numero="";
			CF="";
		}
		
		public TelefonoBean(String aNumber, String aCF){
			numero=aNumber;
			CF=aCF;
		}

		public String getNumero() {
			return numero;
		}

		public void setNumero(String numero) {
			this.numero = numero;
		}

		public String getCF() {
			return CF;
		}

		public void setCF(String cF) {
			CF = cF;
		}

		@Override
		public String toString() {
			return "TelefonoBean [numero=" + numero + ", CF=" + CF + "]";
		}
		
		
}
