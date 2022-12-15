package com.giasuanhem.model.Models;

public class StatisticalModel {
	private int budget_month;
	private int budget_year;
	private String created_at;
	private int status_newclass;
	private int count_trans;
	public int getBudget_month() {
		return budget_month;
	}
	public void setBudget_month(int budget_month) {
		this.budget_month = budget_month;
	}
	public int getBudget_year() {
		return budget_year;
	}
	public void setBudget_year(int budget_year) {
		this.budget_year = budget_year;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public int getStatus_newclass() {
		return status_newclass;
	}
	public void setStatus_newclass(int status_newclass) {
		this.status_newclass = status_newclass;
	}
	public int getCount_trans() {
		return count_trans;
	}
	public void setCount_trans(int count_trans) {
		this.count_trans = count_trans;
	}
}
