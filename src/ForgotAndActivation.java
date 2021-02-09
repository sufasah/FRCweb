import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class ForgotAndActivation {
	public String aemail,semail;
	
	public boolean kontrol(String email) {
		try {
			PreparedStatement prest= Global.conn.prepareStatement("select count(*) from kullanici where email=?");
			prest.setString(1, email);
			ResultSet rs = prest.executeQuery();
			rs.next();
			if(rs.getInt(1)==0)
				return false;
			else return true;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		}
	}
	public String aktivasyon() {
		if(kontrol(aemail)) {
			return "forgot-and-activation.xhtml?faces-redirect=true&islem=basarili&secim=Aktivasyon";
		}
		return "forgot-and-activation.xhtml?faces-redirect=true&islem=basarisiz&secim=Aktivasyon";
		
	}
	public String sifre() {
		if(kontrol(semail)) {
			return "forgot-and-activation.xhtml?faces-redirect=true&islem=basarili&secim=Sifre";
		}
		return "forgot-and-activation.xhtml?faces-redirect=true&islem=basarisiz&secim=Sifre";
	}
	public String getAemail() {
		return aemail;
	}
	public void setSemail(String email) {
		this.semail = email;
	}
	public String getSemail() {
		return semail;
	}
	public void setAemail(String email) {
		this.aemail = email;
	}
	
	
}
