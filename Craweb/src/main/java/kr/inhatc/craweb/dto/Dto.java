package kr.inhatc.craweb.dto;

public class Dto {
	int uNum;
	String uId;
	String uPw;
	int uState;
	
	
	public Dto() {};
	
	
	public Dto(int uNum, String uId, String uPw, int uState) {
		super();
		this.uNum = uNum;
		this.uId = uId;
		this.uPw = uPw;
		this.uState = uState;
	}
	
	
	public int getuNum() {
		return uNum;
	}
	public void setuNum(int uNum) {
		this.uNum = uNum;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuPw() {
		return uPw;
	}
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	public int getuState() {
		return uState;
	}
	public void setuState(int uState) {
		this.uState = uState;
	}
	

}
