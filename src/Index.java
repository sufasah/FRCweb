import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class Index {
	ArrayList<String> kategoriList;
	ArrayList<String> ilList;
	ArrayList<String[]> slideList;
	ArrayList<String[]> reklamList;
	ArrayList<String[]> tiklananList;
	ArrayList<String[]> yeniList;
	ArrayList<String[]> alinmayanList;
	ArrayList<String[]> hotList;
	String tel,mail,facebook,youtube,twitter,instagram;
	
	public String convertDay(String day,String month,String year) {
		String sdate=day+"/"+month+"/"+year;
		try {
			return new SimpleDateFormat("EEE").format(new SimpleDateFormat("dd/MM/yyyy").parse(sdate));
		} catch (ParseException e) {
			return"Exc";
		}		

	}
	public Index() {
		slideList=new ArrayList<String[]>();
			for(int i=0;i<6;i++)
				slideList.add(new String[] {"","Boþ Slide","Bu Default Boþ Slidedýr.","/img/no_slide.jpg"});
		reklamList=new ArrayList<String[]>();
		tiklananList=new ArrayList<String[]>();
		yeniList= new ArrayList<String[]>();
		hotList= new ArrayList<String[]>();
		alinmayanList = new ArrayList<String[]>();
			for(int i=0;i<6;i++)
				hotList.add(new String[] {"","Yakýn Tarihli Bir Bilet Görünmemektedir.","00","00","00","","Yakýn Tarihli Bir Bilet Görünmemektedir.","00","00","00"});
		kategoriList=new ArrayList<String>();
		ilList= new ArrayList<String>();
		try {
			
			PreparedStatement prest= Global.conn.prepareStatement("select deger from genel where bilgi=? or bilgi=? or bilgi=? or bilgi=? or bilgi=? or bilgi=? order by bilgi;");
			prest.setString(1, "telefon");
			prest.setString(2, "email");
			prest.setString(3, "facebook");
			prest.setString(4, "youtube");
			prest.setString(5, "twitter");
			prest.setString(6, "instagram");
			ResultSet rs = prest.executeQuery();
			if(rs.next())
				mail=rs.getString(1);
			if(rs.next())
				facebook=rs.getString(1);
			if(rs.next())
				instagram=rs.getString(1);
			if(rs.next())
				tel=rs.getString(1);
			if(rs.next())
				twitter=rs.getString(1);
			if(rs.next())
				youtube=rs.getString(1);
			
			prest = Global.conn.prepareStatement("select distinct kategori from etkinlik;");
			rs=prest.executeQuery();
			while(rs.next()) {
				if(rs.getString(1)!=null)
					kategoriList.add(rs.getString(1));
			}
			
			prest = Global.conn.prepareStatement("select * from il order by ad;");
			rs=prest.executeQuery();
			while(rs.next()) {
					ilList.add(rs.getString(2));
			}
			
			prest = Global.conn.prepareStatement("select id,baslik,altbaslik,img from etkinlik x,(select c.etkinlik_id,count(*) from ((select b.etkinlik_id from kullanicili_satis a,bilet b where a.bilet_id=b.id ) UNION (select b.etkinlik_id from kullanicisiz_satis a,bilet b where a.bilet_id=b.id)) c group by c.etkinlik_id order by count(*) desc limit 20) y where x.id=y.etkinlik_id order by hit desc limit 6;");
			rs=prest.executeQuery();
			for(int i=0;rs.next();i++) {
				slideList.set(i,new String[] {rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)});
			}
			
			prest=Global.conn.prepareStatement("select * from reklam order by rand() limit 2");
			rs = prest.executeQuery();
			while(rs.next()) {
				reklamList.add(new String[3]);
				reklamList.get(reklamList.size()-1)[0]=rs.getString(1);
				reklamList.get(reklamList.size()-1)[1]=rs.getString(2);
				reklamList.get(reklamList.size()-1)[2]=rs.getString(3);
			}
			
			prest= Global.conn.prepareStatement("select id,baslik,altbaslik,img from etkinlik order by hit desc limit 10;");
			rs = prest.executeQuery();
			while(rs.next()) {
				tiklananList.add(new String[4]);
				tiklananList.get(tiklananList.size()-1)[0]=rs.getString(1);
				tiklananList.get(tiklananList.size()-1)[1]=rs.getString(2);
				tiklananList.get(tiklananList.size()-1)[2]=rs.getString(3);
				tiklananList.get(tiklananList.size()-1)[3]=rs.getString(4);
			}
			
			prest= Global.conn.prepareStatement("select id,baslik,altbaslik,img from etkinlik order by yil,ay desc limit 10;");
			rs = prest.executeQuery();
			while(rs.next()) {
				yeniList.add(new String[4]);
				yeniList.get(yeniList.size()-1)[0]=rs.getString(1);
				yeniList.get(yeniList.size()-1)[1]=rs.getString(2);
				yeniList.get(yeniList.size()-1)[2]=rs.getString(3);
				yeniList.get(yeniList.size()-1)[3]=rs.getString(4);
			}
			
			prest= Global.conn.prepareStatement("select id,baslik,altbaslik,img from etkinlik where id not in(select etkinlik_id from bilet where id in (select bilet_id from kullanicili_satis) or id in (select bilet_id from kullanicisiz_satis));");
			rs = prest.executeQuery();
			while(rs.next()) {
				alinmayanList.add(new String[4]);
				alinmayanList.get(alinmayanList.size()-1)[0]=rs.getString(1);
				alinmayanList.get(alinmayanList.size()-1)[1]=rs.getString(2);
				alinmayanList.get(alinmayanList.size()-1)[2]=rs.getString(3);
				alinmayanList.get(alinmayanList.size()-1)[3]=rs.getString(4);
			}
			
			DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			String time=sdf.format(new Date());

			prest= Global.conn.prepareStatement("select id,baslik,yil,ay,gun from etkinlik where cast(yil as int)=? and cast(ay as int)=? and cast(gun as int)<=? order by hit desc limit 12;");
			prest.setString(1, time.substring(6));
			prest.setString(2, time.substring(3,5));
			prest.setInt(3,Integer.valueOf(time.substring(0,2))+14);
			rs = prest.executeQuery();
			int i=0;
			while(rs.next()) {
				hotList.get(i)[0]=rs.getString(1);
				hotList.get(i)[1]=rs.getString(2);
				hotList.get(i)[2]=rs.getString(3);
				hotList.get(i)[3]=rs.getString(4);
				hotList.get(i)[4]=rs.getString(5);
				if(rs.next()) {
					hotList.get(i)[5]=rs.getString(1);
					hotList.get(i)[6]=rs.getString(2);
					hotList.get(i)[7]=rs.getString(3);
					hotList.get(i)[8]=rs.getString(4);
					hotList.get(i)[9]=rs.getString(5);

				}
				else
					break;
				i++;
			}
			
		} catch (SQLException e) {}
	}
	public List<String[]> getSlideList() {
		return slideList;
	}
	public void setSlideList(ArrayList<String[]> slideList) {
		this.slideList = slideList;
	}
	
	
	public List<String[]> getReklamList() {
		return reklamList;
	}
	public void setReklamList(ArrayList<String[]> reklamList) {
		this.reklamList = reklamList;
	}
	public List<String[]> getTiklananList() {
		return tiklananList;
	}
	public void setTiklananList(ArrayList<String[]> tiklananList) {
		this.tiklananList = tiklananList;
	}
	public List<String[]> getYeniList() {
		return yeniList;
	}
	public void setYeniList(ArrayList<String[]> yeniList) {
		this.yeniList = yeniList;
	}
	public List<String[]> getHotList() {
		return hotList;
	}
	public void setHotList(ArrayList<String[]> hotList) {
		this.hotList = hotList;
	}
	public List<String> getKategoriList() {
		return kategoriList;
	}
	public void setKategoriList(ArrayList<String> kategoriList) {
		this.kategoriList = kategoriList;
	}
	public List<String> getIlList() {
		return ilList;
	}
	public void setIlList(ArrayList<String> ilList) {
		this.ilList = ilList;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getYoutube() {
		return youtube;
	}
	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getInstagram() {
		return instagram;
	}
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
	public List<String[]> getAlinmayanList() {
		return alinmayanList;
	}
	public void setAlinmayanList(ArrayList<String[]> alinmayanList) {
		this.alinmayanList = alinmayanList;
	}
	
}
