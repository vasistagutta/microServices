package com.helloWorld.dto;

public class CardDetailsDTO {

	private int code;
	private String type_of_card;
	private String message;
	private String description;
	private String cvv;
	private String debit_card_no;
	private String accountno;
	private String exp_date;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getType_of_card() {
		return type_of_card;
	}
	public void setType_of_card(String type_of_card) {
		this.type_of_card = type_of_card;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getdebit_card_no() {
		return debit_card_no;
	}
	public void setDebit_card_no(String debit_card_no) {
		this.debit_card_no = debit_card_no;
	}
	public String getAccountno() {
		return accountno;
	}
	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}
	public String getExp_date() {
		return exp_date;
	}
	public void setExp_date(String exp_date) {
		this.exp_date = exp_date;
	}
	
	
	
	
}
