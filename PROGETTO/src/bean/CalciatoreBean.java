package bean;

public class CalciatoreBean {
 private String CF;
 private String nome;
 private String cognome;
 private String ruolo;
 private int NumMaglia;
 private String importanza;

 
 public CalciatoreBean(){
	 CF="";
	 nome="";
	 cognome="";
	 ruolo="";
	 NumMaglia=0;
	 importanza=""; 
 }
 
 public CalciatoreBean(String aCF, String anome, String acognome, String aRole, int aNum, String imp){
	 CF=aCF;
	 nome=anome;
	 cognome=acognome;
	 ruolo=aRole;
	 NumMaglia=aNum;
	 importanza=imp; 
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

public String getRuolo() {
	return ruolo;
}

public void setRuolo(String ruolo) {
	this.ruolo = ruolo;
}

public int getNumMaglia() {
	return NumMaglia;
}

public void setNumMaglia(int numMaglia) {
	NumMaglia = numMaglia;
}

public String getImportanza() {
	return importanza;
}

public void setImportanza(String importanza) {
	this.importanza = importanza;
}

@Override
public String toString() {
	return "CalciatoreBean [CF=" + CF + ", nome=" + nome + ", cognome=" + cognome + ", ruolo=" + ruolo + ", NumMaglia="
			+ NumMaglia + ", importanza=" + importanza + "]";
}
 
 
}
