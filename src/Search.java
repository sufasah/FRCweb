import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

@ManagedBean
@RequestScoped
public class Search {
	public ArrayList<String> pageli;
	public ArrayList<Etkinlik> eventlist;
	public int page;
	public int linkPage;
	public int pageLast;
	public Map<String, String> paramMap;
	String kategori,tarih,il;
	String srcInput;
	String sayfa;
	public int getLinkPage() {
		return linkPage;
	}
	public void setLinkPage(int linkPage) {
		this.linkPage = linkPage;
	}
	public Map<String, String> getParamMap() {
		return paramMap;
	}
	public void setParamMap(Map<String, String> paramMap) {
		this.paramMap = paramMap;
	}
	public int getPageLast() {
		return pageLast;
	}
	public void setPageLast(int pageLast) {
		this.pageLast = pageLast;
	}
	public String pagesub() {
		return "search.xhtml?page="+sayfa;
	}
	
	public void pageliAyarla(int x) {
		if(page<6) {
			linkPage=x;
		}
		else if(page>pageLast-5 && pageLast>6) {
			linkPage=pageLast-9+x;
			if(linkPage<1)
				linkPage=1;
		}
		else {
			linkPage=page-5+x;
		}
	}
	public void init() {
		FacesContext context = FacesContext.getCurrentInstance();
        paramMap = context.getExternalContext().getRequestParameterMap();
        if(paramMap.containsKey("page"))
       	 	page=Integer.valueOf(paramMap.get("page"));
        else
       	 	page=1;
		pageli = new ArrayList<String>();
		for(int i=1;i<11;i++)
			pageli.add(i-1, String.valueOf(i));
		
		eventlist= new ArrayList<Etkinlik>();
		try {
			PreparedStatement prest;
			String vttarih=null,tarihsimdi = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			if(kategori!=null && tarih != null && il != null && !kategori.equals("") && !tarih.equals("") && !il.equals("")) {
				if(tarih.equals("bugun"))
					vttarih=tarihsimdi;
				else if(tarih.equals("tum")) {
					vttarih="9999-12-31";
					tarihsimdi= "0000-00-00";
				}
				else if(tarih.equals("bhafta")) {
					Calendar cal=Calendar.getInstance();
					cal.add(Calendar.DAY_OF_MONTH, 7);
					vttarih=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
				}
				else if(tarih.equals("o30g")) {
					Calendar cal=Calendar.getInstance();
					cal.add(Calendar.DAY_OF_MONTH, 30);
					vttarih=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
				}
				prest=Global.conn.prepareStatement("SELECT baslik,yil,ay,gun,saat,dakika,il,ilce,img,konum,id FROM etkinlik "
						+ "where cast(concat(yil,'-',ay,'-',gun) as date)>=? and "
						+ "cast(concat(yil,'-',ay,'-',gun) as date)<=? and "
						+ "(kategori=? or 'tumktg'=?) and (il=? or 'tum'=?) ORDER BY baslik ASC limit ?,?;");
				prest.setString(1,tarihsimdi);
				prest.setString(2,vttarih);
				prest.setString(3,kategori);
				prest.setString(4,kategori);
				prest.setString(5,il);
				prest.setString(6,il);
				prest.setInt(7, (page)*Global.searchCount-Global.searchCount);
				prest.setInt(8, Global.searchCount);
			}
			else if(srcInput!= null) {
				srcInput = srcInput.replace("!", "!!")
					    .replace("%", "!%")
					    .replace("_", "!_")
					    .replace("[", "![");
				prest=Global.conn.prepareStatement("SELECT baslik,yil,ay,gun,saat,dakika,il,ilce,img,konum,id FROM etkinlik where baslik like ? or yil like ? or ay like ? or gun like ?  or il like ? or ilce like ? or konum like ? escape '!';");
				prest.setString(1,"%"+srcInput+"%");
				prest.setString(2,"%"+srcInput+"%");
				prest.setString(3,"%"+srcInput+"%");
				prest.setString(4,"%"+srcInput+"%");
				prest.setString(5,"%"+srcInput+"%");
				prest.setString(6,"%"+srcInput+"%");
				prest.setString(7,"%"+srcInput+"%");
			}
			else {
				prest= Global.conn.prepareStatement("SELECT baslik,yil,ay,gun,saat,dakika,il,ilce,img,konum,id FROM etkinlik ORDER BY baslik ASC limit ?,?;");
				prest.setInt(1, (page)*Global.searchCount-Global.searchCount);
				prest.setInt(2, Global.searchCount);
			}
			ResultSet rs = prest.executeQuery();
			while(rs.next()){
				Etkinlik tmp = new Etkinlik();
				tmp.baslik=rs.getString(1);
				tmp.yil=rs.getString(2);
				tmp.ay=rs.getString(3);
				tmp.gun=rs.getString(4);
				tmp.saat=rs.getString(5);
				tmp.dakika=rs.getString(6);
				tmp.il=rs.getString(7);
				tmp.ilce=rs.getString(8);
				tmp.img=rs.getString(9);
				tmp.konum=rs.getString(10);
				tmp.id=rs.getString(11);
				eventlist.add(tmp);
			}
			if(kategori!=null && tarih != null && il != null && !kategori.equals("") && !tarih.equals("") && !il.equals("")) {
				prest=Global.conn.prepareStatement("SELECT ceil(count(*)/10) FROM etkinlik "
						+ "where cast(concat(yil,'-',ay,'-',gun) as date)>=? and "
						+ "cast(concat(yil,'-',ay,'-',gun) as date)<=? and "
						+ "(kategori=? or 'tumktg'=?) and (il=? or 'tum'=?) ORDER BY baslik ASC limit ?,?;");
				prest.setString(1,tarihsimdi);
				prest.setString(2,vttarih); 
				prest.setString(3,kategori);
				prest.setString(4,kategori);
				prest.setString(5,il);
				prest.setString(6,il);
				prest.setInt(7, (page)*Global.searchCount-Global.searchCount);
				prest.setInt(8, Global.searchCount);
				rs=prest.executeQuery();
				if(rs.next())
					pageLast=rs.getInt(1);
			}
			else if (srcInput!=null) {
				srcInput = srcInput.replace("!", "!!")
					    .replace("%", "!%")
					    .replace("_", "!_")
					    .replace("[", "![");
				prest=Global.conn.prepareStatement("SELECT ceil(count(*)/10) FROM etkinlik where baslik like ? or yil like ? or ay like ? or gun like ? or il like ? or ilce like ? or konum like ? escape '!';");
				prest.setString(1,"%"+srcInput+"%");
				prest.setString(2,"%"+srcInput+"%");
				prest.setString(3,"%"+srcInput+"%");
				prest.setString(4,"%"+srcInput+"%");
				prest.setString(5,"%"+srcInput+"%");
				prest.setString(6,"%"+srcInput+"%");
				prest.setString(7,"%"+srcInput+"%");
				if(rs.next())
					pageLast=rs.getInt(1);
			}
			else {
				prest=Global.conn.prepareStatement("SELECT ceil(count(*)/10) FROM etkinlik;");
				rs=prest.executeQuery();
				if(rs.next()) {
					pageLast=rs.getInt(1);
				}
			}
			if(pageLast==0)
				pageLast=1;
		} catch (SQLException e) {
			System.out.println(e);
			}
		
	}

	public List<String> getPageli() {
		return (List<String>)pageli;
	}

	public void setPageli(ArrayList<String> pageli) {
		this.pageli = pageli;
	}
	public ArrayList<Etkinlik> getEventlist() {
		return eventlist;
	}
	public void setEventlist(ArrayList<Etkinlik> eventlist) {
		this.eventlist = eventlist;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getKategori() {
		return kategori;
	}
	public void setKategori(String kategori) {
		this.kategori = kategori;
	}
	public String getTarih() {
		return tarih;
	}
	public void setTarih(String tarih) {
		this.tarih = tarih;
	}
	public String getIl() {
		return il;
	}
	public void setIl(String il) {
		this.il = il;
	}
	public String getSrcInput() {
		return srcInput;
	}
	public void setSrcInput(String srcInput) {
		this.srcInput = srcInput;
	}
	public String getSayfa() {
		return sayfa;
	}
	public void setSayfa(String sayfa) {
		this.sayfa = sayfa;
	}
	
}
