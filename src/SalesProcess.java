

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Pattern;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean(name="sps")
@RequestScoped
public class SalesProcess {
	public String etkinlik_id,bolum,kategori,fiyat,sure="05:00";
	public Etkinlik e;
	public String ad,soyad,email,sifre,emailtekrar,telefon;
	public String fad,fsoyad,fadres1,fadres2,fil,filce,fposta,ftelefon;
	public String kupon,kisim,kredino,taksit,sktay,sktyil,cvv;
	public String sonuc="";
	boolean uyegirisli;
	public String convertDay(String day,String month,String year) {
		String sdate=day+"/"+month+"/"+year;
		try {
			return new SimpleDateFormat("EEE").format(new SimpleDateFormat("dd/MM/yyyy").parse(sdate));
		} catch (ParseException e) {
			return"Exc";
		}		
	}
	public String convertMonth(String mont) {
		try {
		return new String[] {"Ocak","Þubat","Mart","Nisan","Mayýs","Haziran","Temmuz","Aðustos","Eylül","Ekim","Kasým","Aralýk"}[Integer.valueOf(mont).intValue()];
		}catch(Exception e){
			return "";
		}
	}
	public String girisYap() {
		PreparedStatement prest;
		try {
			prest = Global.conn.prepareStatement("select * from kullanici where email=? and sifre=?;");
			prest.setString(1, email);
			prest.setString(2, sifre);
			ResultSet rs=prest.executeQuery();
			while(rs.next()) {
				ad=rs.getString(4);
				soyad=rs.getString(5);
				telefon=rs.getString(10);
				uyegirisli=true;
				return "sales-process-delivery.xhtml";
			}
			sonuc="noresultset";
		} catch (SQLException e) {
			System.out.println(e);
			sonuc="sqlerror";
		}
		return "sales-process-login.xhtml";
	}
	public String girisYapmadan() {
		if(ad.equals("") || soyad.equals("") || email.equals("") || telefon.equals("") || emailtekrar.equals("") || !email.equals(emailtekrar)||
			!Pattern.compile("^[A-Za-z0-9+_.-]+@(.+)$").matcher(email).matches() || telefon.length()!=11) 
		{
			sonuc="improperinput";
			return "sales-process-login.xhtml";
		}
		uyegirisli=false;
		return"sales-process-delivery.xhtml";
	}
	public boolean biletAl() {
		try {
			PreparedStatement prest = Global.conn.prepareStatement("select * from bilet where etkinlik_id=? and bolum=? and fiyat=? and kategori=? and id not in (select bilet_id from kullanicili_satis) and id not in (select bilet_id from kullanicisiz_satis) limit 1;");
			prest.setString(1, etkinlik_id);
			prest.setString(2, bolum);
			prest.setString(3, fiyat);
			prest.setString(4, kategori);
			ResultSet rs=prest.executeQuery();
			String biletid=null;
			if(rs.next()) 
				biletid=rs.getString(1);
			else
				return false;
			
			if(uyegirisli) {
				prest=Global.conn.prepareStatement("insert into kullanicili_satis(bilet_id,email,fad,fsoyad,fadres1,fadres2,fil,filce,fposta,ftelefon) values (?,?,?,?,?,?,?,?,?,?);");
				prest.setString(1,biletid);
				prest.setString(2,email );
				prest.setString(3,fad );
				prest.setString(4,fsoyad );
				prest.setString(5,fadres1 );
				prest.setString(6,fadres2 );
				prest.setString(7,fil );
				prest.setString(8,filce );
				prest.setString(9,fposta );
				prest.setString(10,ftelefon );
				if(prest.executeUpdate()==0) {
					prest=Global.conn.prepareStatement("delete from bilet where id=?;");
					prest.setString(1, biletid);
					prest.executeUpdate();
					return false;
				}
			}
			else {
				prest=Global.conn.prepareStatement("insert into kullanicisiz_satis(bilet_id,ad,soyad,telefon,email,fad,fsoyad,fadres1,fadres2,fil,filce,fposta,ftelefon) values (?,?,?,?,?,?,?,?,?,?,?,?,?);");	
				prest.setString(1,biletid);
				prest.setString(2,ad );
				prest.setString(3,soyad );
				prest.setString(4,telefon );
				prest.setString(5,email );
				prest.setString(6,fad );
				prest.setString(7,fsoyad );
				prest.setString(8,fadres1 );
				prest.setString(9,fadres2 );
				prest.setString(10,fil );
				prest.setString(11,filce );
				prest.setString(12,fposta );
				prest.setString(13,ftelefon );
				if(prest.executeUpdate()==0) {
					prest=Global.conn.prepareStatement("delete from bilet where id=?;");
					prest.setString(1, biletid);
					prest.executeUpdate();
					return false;
				}
			}
			return true;
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return false;
	}
	public String kuponlaOde() {
		try {
			PreparedStatement prest = Global.conn.prepareStatement("select * from kupon where kod=?;");
			prest.setString(1, kupon);
			ResultSet rs=prest.executeQuery();
			if(rs.next()) {
				if(biletAl()) {
					prest = Global.conn.prepareStatement("delete from kupon where kod=?");
					prest.setString(1, kupon);
					prest.executeUpdate();
					sonuc="kuponbasarili";
				}
				else 
					sonuc="satisbasarisiz";
				
			}
			else
				sonuc="kuponbasarisiz";
		} catch (SQLException e) {
			System.out.println(e);
			sonuc="sqlerror";
		}
		return "sales-process-payment.xhtml";
	}
	public String satisTamamlandi() {
		if(biletAl()) {
			sonuc="satisbasarili";
			return "sales-process-payment.xhtml";
		}
		sonuc="satisbasarisiz";
		return "sales-process-payment.xhtml";
	}
	public void init() {
		 try {
			 PreparedStatement prest= Global.conn.prepareStatement("select * from etkinlik where id=?;");
				prest.setString(1, etkinlik_id);
				ResultSet rs= prest.executeQuery();
				rs.next();
				e = new Etkinlik();
				e.id=etkinlik_id;
				e.baslik=rs.getString(2);
				e.altbaslik=rs.getString(3);
				e.icerik=rs.getString(4);
				e.yil=rs.getString(5);
				e.ay=rs.getString(6);
				e.gun=rs.getString(7);
				e.saat=rs.getString(8);
				e.dakika=rs.getString(9);
				e.img=rs.getString(10);
				e.il=rs.getString(11);
				e.ilce=rs.getString(12);
				e.konum=rs.getString(13);
				e.duzenimg=rs.getString(14);
				e.altbilgi1=rs.getString(15);
				e.altbilgi2=rs.getString(16);
				e.hit=rs.getString(17);
				e.kategori=rs.getString(18);
		 }catch (SQLException e) {
			 System.out.println(e);
		}
	}

	public String getEtkinlik_id() {
		return etkinlik_id;
	}

	public void setEtkinlik_id(String etkinlik_id) {
		this.etkinlik_id = etkinlik_id;
	}

	public String getBolum() {
		return bolum;
	}

	public void setBolum(String bolum) {
		this.bolum = bolum;
	}

	public String getKategori() {
		return kategori;
	}

	public void setKategori(String kategori) {
		this.kategori = kategori;
	}

	public String getFiyat() {
		return fiyat;
	}

	public void setFiyat(String fiyat) {
		this.fiyat = fiyat;
	}

	public Etkinlik getE() {
		return e;
	}

	public void setE(Etkinlik e) {
		this.e = e;
	}

	public String getSure() {
		return sure;
	}

	public void setSure(String sure) {
		this.sure = sure;
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
	
	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
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
	public String getEmailtekrar() {
		return emailtekrar;
	}
	public void setEmailtekrar(String emailtekrar) {
		this.emailtekrar = emailtekrar;
	}
	public String getFad() {
		return fad;
	}
	public void setFad(String fad) {
		this.fad = fad;
	}
	public String getFsoyad() {
		return fsoyad;
	}
	public void setFsoyad(String fsoyad) {
		this.fsoyad = fsoyad;
	}
	public String getFadres1() {
		return fadres1;
	}
	public void setFadres1(String fadres1) {
		this.fadres1 = fadres1;
	}
	public String getFadres2() {
		return fadres2;
	}
	public void setFadres2(String fadres2) {
		this.fadres2 = fadres2;
	}
	public String getFil() {
		return fil;
	}
	public void setFil(String fil) {
		this.fil = fil;
	}
	public String getFilce() {
		return filce;
	}
	public void setFilce(String filce) {
		this.filce = filce;
	}
	public String getFposta() {
		return fposta;
	}
	public void setFposta(String fposta) {
		this.fposta = fposta;
	}
	public String getFtelefon() {
		return ftelefon;
	}
	public void setFtelefon(String ftelefon) {
		this.ftelefon = ftelefon;
	}
	public String getKupon() {
		return kupon;
	}
	public void setKupon(String kupon) {
		this.kupon = kupon;
	}
	public String getKisim() {
		return kisim;
	}
	public void setKisim(String kisim) {
		this.kisim = kisim;
	}
	public String getKredino() {
		return kredino;
	}
	public void setKredino(String kredino) {
		this.kredino = kredino;
	}
	public String getTaksit() {
		return taksit;
	}
	public void setTaksit(String taksit) {
		this.taksit = taksit;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getSktay() {
		return sktay;
	}
	public void setSktay(String sktay) {
		this.sktay = sktay;
	}
	public String getSktyil() {
		return sktyil;
	}
	public void setSktyil(String sktyil) {
		this.sktyil = sktyil;
	}
	public String getSonuc() {
		return sonuc;
	}
	public void setSonuc(String sonuc) {
		this.sonuc = sonuc;
	}
	public boolean getUyegirisli() {
		return uyegirisli;
	}
	public void setUyegirisli(boolean uyegirisli) {
		this.uyegirisli = uyegirisli;
	}
	
	
}
