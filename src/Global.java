import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

@ManagedBean
@ApplicationScoped
public class Global {
	private boolean initialized=false;
	public static String durl="jdbc:mysql://localhost/frcweb?serverTimezone=UTC"
			,duname="root",dpass="";
	public static Connection conn;
	public static final int searchCount=10;
	
	public int counter;
	
	public int getCounter() {
		return counter;
	}
	public void setCounter(int counter) {
		this.counter=counter;
	}
	public void counterup() {
		counter++;
	}
	
	public void init(){
		if(!initialized) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {}
			try {
				conn=DriverManager.getConnection(durl,duname,dpass);
			} catch (SQLException e) {
				conn=null;
			}
			initialized=true;
		}else if(conn==null) {
			try {
				conn=DriverManager.getConnection(durl,duname,dpass);
			} catch (SQLException e) {
				conn=null;
			}
		}
	}
}
