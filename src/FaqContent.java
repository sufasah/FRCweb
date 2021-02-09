import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

@ManagedBean
@RequestScoped
public class FaqContent {
	String yardimid,yardimbaslik,id,baslik,icerik;
	ArrayList<String[]> sss;
	Map<String,String> paramMap;
	public FaqContent() {
		FacesContext context = FacesContext.getCurrentInstance();
        paramMap = context.getExternalContext().getRequestParameterMap();
		try {
			PreparedStatement prest = Global.conn.prepareStatement("select * from sss where id=?");
			prest.setString(1, paramMap.get("id"));
			ResultSet rs= prest.executeQuery();
			if(rs.next()) {
				id=rs.getString(1);
				yardimid=rs.getString(2);
				baslik=rs.getString(3);
				icerik=rs.getString(4);
			}
			prest=Global.conn.prepareStatement("select baslik from yardim where id=?");
			prest.setString(1, yardimid);
			rs=prest.executeQuery();
			if(rs.next()) {
			yardimbaslik=rs.getString(1);
			}
			sss=new ArrayList<String[]>();
			prest=Global.conn.prepareStatement("select id,baslik from sss limit 10;");
			rs = prest.executeQuery();
			while(rs.next()) {
				sss.add(new String[] {rs.getString(1),rs.getString(2)});
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
	public String getYardimid() {
		return yardimid;
	}
	public void setYardimid(String yardimid) {
		this.yardimid = yardimid;
	}
	public String getYardimbaslik() {
		return yardimbaslik;
	}
	public void setYardimbaslik(String yardimbaslik) {
		this.yardimbaslik = yardimbaslik;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBaslik() {
		return baslik;
	}
	public void setBaslik(String baslik) {
		this.baslik = baslik;
	}
	public String getIcerik() {
		return icerik;
	}
	public void setIcerik(String icerik) {
		this.icerik = icerik;
	}
	public List<String[]> getSss() {
		return sss;
	}
	public void setSss(ArrayList<String[]> sss) {
		this.sss = sss;
	}
	
}
