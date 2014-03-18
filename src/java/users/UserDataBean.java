package users;

import java.util.ArrayList;

/**
 *
 * @author Jaroslav Srp / Stefan Veres
 */
public class UserDataBean {
	private final ArrayList<UserBean> users = new ArrayList<UserBean>();
	
    
	public synchronized void addUser(UserBean user) {
		users.add(user);
	}
    
    public synchronized int getSize() {
		return users.size();
	}
    
    public synchronized UserBean getLastBean() {
		return this.users.get(this.users.size() - 1);
	}
    
    public synchronized boolean isEmpty() {
        return this.users.isEmpty();
    }
    
    public synchronized boolean isLastEmpty() {
        return this.getLastBean().isEmpty();
	}
        
    public synchronized ArrayList<UserBean> getUsers() {
		return this.users;
	}

    
}
