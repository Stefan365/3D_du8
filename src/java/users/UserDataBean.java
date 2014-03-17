/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import java.util.ArrayList;

/**
 *
 * @author Jaroslav Srp
 */
public class UserDataBean {
	private ArrayList<UserBean> users = new ArrayList<UserBean>();
	private int size;
	
    
	public synchronized void addUser(UserBean user) {
		users.add(user);
	}
    
    public synchronized int getSize() {
		return users.size();
	}

    public synchronized ArrayList<UserBean> getUsers() {
		return this.users;
	}

    
}
