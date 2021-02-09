import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;


@ManagedBean
@ViewScoped
public class Event {
	public Etkinlik e;
	public ArrayList<EventKategori> kategoriList;
	public ArrayList<EventBolum> bolumList;
	public ArrayList<EventFiyat> fiyatList;
	
	public String secilibolum,secilikategori,secilifiyat;
	String id;
	
	
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
	public void hit() {

		try {
			PreparedStatement prest= Global.conn.prepareStatement("update etkinlik set hit=hit+1 where id=?;");
			prest.setString(1,id);
			prest.executeUpdate();
		} catch (SQLException e) {}
	}
	
	public void init() {
		FacesContext context = FacesContext.getCurrentInstance();
        id=context.getExternalContext().getRequestParameterMap().get("id");
        try {
			PreparedStatement prest= Global.conn.prepareStatement("select * from etkinlik where id=?;");
			prest.setString(1, id);
			ResultSet rs= prest.executeQuery();
			if(rs.next()) {
			e = new Etkinlik();
			e.id=id;
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
			}
			prest=Global.conn.prepareStatement("select distinct kategori from bilet where etkinlik_id=?;");
			prest.setString(1,id);
			rs= prest.executeQuery();
			kategoriList=new ArrayList<EventKategori>();
			while(rs.next()) {
				kategoriList.add(new EventKategori(rs.getString(1)));
			}
			
			bolumList=new ArrayList<EventBolum>();
			for(int i=0;i<kategoriList.size();i++) {
				prest=Global.conn.prepareStatement("select distinct bolum from bilet where etkinlik_id=? AND kategori=?");
				prest.setString(1, id);
				prest.setString(2, kategoriList.get(i).kategori);
				rs=prest.executeQuery();
				while(rs.next()) {
					bolumList.add(new EventBolum(kategoriList.get(i).kategori,rs.getString(1)));
				}
			}
			fiyatList=new ArrayList<EventFiyat>();
			for(int j=0;j<bolumList.size();j++) {
				prest=Global.conn.prepareStatement("select distinct fiyat from bilet where etkinlik_id=? AND kategori=? AND bolum=?");
				prest.setString(1, id);
				prest.setString(2, bolumList.get(j).id);
				prest.setString(3, bolumList.get(j).bolum);
				rs=prest.executeQuery();
				while(rs.next()) {
					EventFiyat tmp=new EventFiyat(bolumList.get(j).id+"#-#-#"+bolumList.get(j).bolum,rs.getString(1));
					if(!fiyatList.contains(tmp))
						fiyatList.add(tmp);
				}
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
	
	

	public List<EventBolum> getBolumList() {
		return bolumList;
	}
	public void setBolumList(ArrayList<EventBolum> bolumList) {
		this.bolumList = bolumList;
	}
	public List<EventFiyat> getFiyatList() {
		return fiyatList;
	}
	public void setFiyatList(ArrayList<EventFiyat> fiyatList) {
		this.fiyatList = fiyatList;
	}
	public List<EventKategori> getKategoriList() {
		return kategoriList;
	}
	public void setKategoriList(ArrayList<EventKategori> kategoriList) {
		this.kategoriList = kategoriList;
	}
	public Etkinlik getE() {
		return e;
	}

	public void setE(Etkinlik e) {
		this.e = e;
	}

	public String getSecilibolum() {
		return secilibolum;
	}

	public void setSecilibolum(String secilibolum) {
		this.secilibolum = secilibolum;
	}

	public String getSecilikategori() {
		return secilikategori;
	}

	public void setSecilikategori(String secilikategori) {
		this.secilikategori = secilikategori;
	}

	public String getSecilifiyat() {
		return secilifiyat;
	}

	public void setSecilifiyat(String secilifiyat) {
		this.secilifiyat = secilifiyat;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
