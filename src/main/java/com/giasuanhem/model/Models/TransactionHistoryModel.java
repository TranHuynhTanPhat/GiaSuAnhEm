package com.giasuanhem.model.Models;

public class TransactionHistoryModel {

	private int id;
	private int amount;
	private String content;
	private Object id_account;
	private int status;
	private String created_at;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Object getId_account() {
		return id_account;
	}
	public void setId_account(Object id_account) {
		this.id_account = id_account;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
	
}
