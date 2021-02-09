import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Pattern;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class Communication {
	public String baslik,email,telefon,icerik;
	
	public boolean findFirstNotOf(String search,String chars) {
		for(int i=0;i<search.length();i++)
			if(chars.indexOf(search.charAt(i))==-1)
				return true;
		return false;
	}
	public String yolla(){

		if(!Pattern.compile("^[A-Za-z0-9+_.-]+@(.+)$").matcher(email).matches() || baslik.length()>60 || email.length()>100 || telefon.length()!=11|| findFirstNotOf(telefon, "0123456789") || icerik.length()>800) {
			return "communication.xhtml?faces-redirect=true&sonuc=basarisiz";
		}
		try {
			PreparedStatement prest= Global.conn.prepareStatement("insert into iletisim(baslik,email,telefon,icerik) values(?,?,?,?);");
			prest.setString(1, baslik);
			prest.setString(2, email);
			prest.setString(3, telefon);
			prest.setString(4, icerik);
			if(prest.executeUpdate()==0) {
				return "communication.xhtml?faces-redirect=true&sonuc=basarisiz";
			}
			else {
				return "communication.xhtml?faces-redirect=true&sonuc=basarili";
			}
		} catch (SQLException e) {
			return "communication.xhtml?faces-redirect=true&sonuc=error";
		}
	}
	
	public String getBaslik() {
		return baslik;
	}

	public void setBaslik(String baslik) {
		this.baslik = baslik;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public String getIcerik() {
		return icerik;
	}

	public void setIcerik(String icerik) {
		this.icerik = icerik;
	}

}
