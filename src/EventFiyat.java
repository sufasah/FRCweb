public class EventFiyat{
	public String id,fiyat;
	public EventFiyat(String i,String f) {
		id=i;
		fiyat=f;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFiyat() {
		return fiyat;
	}
	public void setFiyat(String fiyat) {
		this.fiyat = fiyat;
	}
	public boolean equals(Object obj) {
		if(!(obj instanceof EventFiyat))
			return false;
		EventFiyat o=(EventFiyat)obj;
		if(o.fiyat.equals(this.fiyat) && o.id.equals(this.id))
			return true;
		return false;
	}
}