import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class Login {
	private String email,sifre;
	boolean logged;
	public String giris() {
		logged=false;
		try {
			PreparedStatement prest = Global.conn.prepareStatement("select count(*) from kullanici where email=? and sifre=?;");
			prest.setString(1, email);
			prest.setString(2, sifre);
			ResultSet rs= prest.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1)==1) {
					logged=true;
					return "login.xhtml?faces-redirect=true&giris=basarili";
				}
			}
		} catch (SQLException e) {
			System.out.println(e);
			return "login.xhtml?faces-redirect=true&giris=basarisiz";
		}
		return "login.xhtml?faces-redirect=true&giris=basarisiz";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSifre() {
		return sifre;
	}
	public void setSifre(String sifre) {
		this.sifre = sifre;
	}
	public boolean isLogged() {
		return logged;
	}
	public void setLogged(boolean logged) {
		this.logged = logged;
	}
	
	
}
