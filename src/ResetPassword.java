import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class ResetPassword {
	String sifre,sifret,rc;
	
	
	public String reset() {
		if(!sifre.equals(sifret) || sifre.length()>30 || sifre.length()<6)
			return "reset-pass.xhtml?faces-redirect=true&sonuc=esitdegil&rc="+rc;
		try {
			PreparedStatement prest = Global.conn.prepareStatement("update kullanici set sifre=? where id=(select deger from genel where bilgi=?);");
			prest.setString(1, sifre);
			prest.setString(2, rc);
			if(prest.executeUpdate()!=0) {
				prest= Global.conn.prepareStatement("delete from genel where bilgi=?");
				prest.setString(1,rc);
				prest.executeUpdate();
				return "reset-pass.xhtml?faces-redirect=true&sonuc=basarili&rc="+rc;
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return "reset-pass.xhtml?faces-redirect=true&rc="+rc+"&sonuc=basarisiz";
	}
	public String getSifre() {
		return sifre;
	}
	public void setSifre(String sifre) {
		this.sifre = sifre;
	}
	public String getSifret() {
		return sifret;
	}
	public void setSifret(String sifret) {
		this.sifret = sifret;
	}
	public String getRc() {
		return rc;
	}
	public void setRc(String rc) {
		this.rc = rc;
	}
	
	
}
