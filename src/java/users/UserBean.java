package users;

/**
 *
 * @author Stefan Veres
 */
public class UserBean {
	private String name;
    private String surname;
	private int idNum;
    private String birthYear;

	public int getIdNum() {
		return idNum;
	}

	public void setIdNum(int idNum) {
		this.idNum = idNum;
	}

	public String getName() {
		return name;
	}

    public void setName(String name) {
		this.name = name;
	}


	public void setSurname(String surname) {
		this.surname = surname;
	}
   	public String getSurname() {
		return surname;
	}

	public void setBirthYear(String year) {
		this.birthYear  = year;
	}
    
   	public String getBirthYear() {
		return this.birthYear;
	}

	public boolean hasValidData() {
		return (!"".equals(this.surname) && (!"".equals(this.name)) && !"".equals(this.birthYear));
        
	}
    
    public boolean isEmpty() {
		return (this.name == null && this.surname == null && this.birthYear == null);
	}
}
