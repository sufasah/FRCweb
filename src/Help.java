import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class Help {

	ArrayList<Yardim> yardimList;
	
	public String yardimIdAt(int x) {
		return yardimList.get(x).id;
	}
	public Help() {
		yardimList = new ArrayList<Yardim>();
		try {
			PreparedStatement prest= Global.conn.prepareStatement("select * from yardim;");
			ResultSet rs=prest.executeQuery();
			while(rs.next()) {
				Yardim tmp = new Yardim();
				tmp.id=rs.getString(1);
				tmp.baslik=rs.getString(2);
				tmp.icon=rs.getString(3);
				yardimList.add(tmp);
			}
			for(int i=0;i<yardimList.size();i++) {
				prest=Global.conn.prepareStatement("select id,baslik from sss where yardim_id=?");
				prest.setString(1, yardimList.get(i).id);
				rs=prest.executeQuery();
				yardimList.get(i).sssList=new ArrayList<String[]>();
				while(rs.next()) {
					yardimList.get(i).sssList.add(new String[] {rs.getString(1),rs.getString(2)});
				}
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
	public List<Yardim> getYardimList() {
		return yardimList;
	}
	public void setYardimList(ArrayList<Yardim> yardimList) {
		this.yardimList = yardimList;
	}
	
	
	
}
