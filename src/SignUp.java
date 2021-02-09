import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Pattern;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
@ManagedBean
@RequestScoped
public class SignUp implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String ad,soyad,dogumtarih,eposta,epostatekrar,sifre,sifretekrar,telefon;
	boolean cinsiyet;
	public String kaydet(){
		try {			
				if(ad.equals("") || soyad.equals("") || dogumtarih.equals("") || eposta.equals("") || sifre.equals("") || sifretekrar.equals("")||
				   telefon.equals("") || epostatekrar.equals("") || !eposta.equals(epostatekrar) || !sifre.equals(sifretekrar) ||
				   ad.length()>30 || soyad.length()>30 || !Pattern.compile("[0-9]{1,2}(.)[0-9]{1,2}(.)[0-9]{4}").matcher(dogumtarih).matches()
				   || !Pattern.compile("^[A-Za-z0-9+_.-]+@(.+)$").matcher(eposta).matches() || sifre.length()>30 || sifre.length()<6 || telefon.length()!=11) 
					return "sign-up.xhtml?faces-redirect=true&sonuc=uygunsuz";
				
				String[] sdogumtarih=dogumtarih.split("\\.");
				Connection dbc=Global.conn;
				String sql= "INSERT INTO kullanici(email,sifre,ad,soyad,cinsiyet,dgun,day,dyil,telefon) (SELECT ?,?,?,?,?,?,?,?,? WHERE NOT EXISTS (SELECT * FROM kullanici WHERE email=?));";
				PreparedStatement prest = dbc.prepareStatement(sql);
				prest.setString(1,eposta);
				prest.setString(2,sifre);
				prest.setString(3,ad);
				prest.setString(4,soyad);
				prest.setBoolean(5,cinsiyet);
				prest.setString(6,sdogumtarih[0]);
				prest.setString(7,sdogumtarih[1]);
				prest.setString(8,sdogumtarih[2]);
				prest.setString(9, telefon);
				prest.setString(10,eposta);
				int res=prest.executeUpdate();
				if(res==1) {
					return "sign-up.xhtml?faces-redirect=true&sonuc=basarili";
				}
				else {
					return "sign-up.xhtml?faces-redirect=true&sonuc=basarisiz";
				}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return "sign-up.xhtml?faces-redirect=true&sonuc=error";
		}
		
	}
	
	public String getEpostatekrar() {
		return epostatekrar;
	}
	public void setEpostatekrar(String epostatekrar) {
		this.epostatekrar = epostatekrar;
	}
	public void setCinsiyet(boolean cinsiyet) {
		this.cinsiyet=cinsiyet;
	}
	public boolean getCinsiyet() {
		return cinsiyet;
	}
	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public String getSoyad() {
		return soyad;
	}

	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}

	public String getDogumtarih() {
		return dogumtarih;
	}

	public void setDogumtarih(String dogumtarih) {
		this.dogumtarih = dogumtarih;
	}

	public String getEposta() {
		return eposta;
	}

	public void setEposta(String eposta) {
		this.eposta = eposta;
	}


	public String getSifre() {
		return sifre;
	}

	public String getSifretekrar() {
		return sifretekrar;
	}
	public void setSifretekrar(String sifretekrar) {
		this.sifretekrar = sifretekrar;
	}
	public void setSifre(String sifre) {
		this.sifre = sifre;
	}
	public String getTelefon() {
		return telefon;
	}
	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
