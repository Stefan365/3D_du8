/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

/**
 *
 * @author Jaroslav Srp
 */
public class UserBean {
	private String name;
    private String surname;
	private int idNum;

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


	public boolean hasValidData() {
		return this.name != null && this.surname != null;
	}
}
