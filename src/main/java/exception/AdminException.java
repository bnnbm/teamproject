package exception;

public class AdminException extends RuntimeException{
	private String url;
	public AdminException(String msg, String url) {
		super(msg);
		this.url = url;
	}
	public String getUrl() {
		return url;
	}
}
