package bean;

public class UtenteBean {
private static final long serialVersionUID = 1L;
	
	private String CF;
	private String Surname;
	private String Name;
	private String Mail;
	private String Username;
	private String password;
	private int admin;
	

	public UtenteBean(){
		CF="";
		Surname="";
		Name="";
		Mail="";
		Username="";
		password="";
		admin=0;
	}

	public UtenteBean(String aCF, String aSurname, String aName, String aMail,String aUsername,String aPassword){
		CF=aCF;
		Surname=aSurname;
		Name=aName;
		Mail=aMail;
		Username=aUsername;
		password=aPassword;
		admin=0;
	}

	public String getCF() {
		return CF;
	}

	public void setCF(String cF) {
		CF = cF;
	}

	public String getSurname() {
		return Surname;
	}

	public void setSurname(String surname) {
		Surname = surname;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getMail() {
		return Mail;
	}

	public void setMail(String mail) {
		Mail = mail;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "UTENTE [CF=" + CF + ", Surname=" + Surname + ", Name=" + Name + ", Mail=" + Mail + ", Username="
				+ Username + ", password=" + password + ", admin=" + admin + "]";
	}
	
	

}





