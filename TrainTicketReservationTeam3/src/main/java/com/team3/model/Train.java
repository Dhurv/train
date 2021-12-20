package com.team3.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "trains")
public class Train {
	@Id
//	@Column(name = "train_no")
	int train_no;
//	@Column(name = "train_name")
	String train_name;
//	@Column(name = "source")
	String source;
//	@Column(name = "destination")
	String destination;
//	@Column(name = "ticket_price")
	double ticket_price;
	
	
	
	public Train() {
		super();
	}
	public int getTrain_no() {
		return train_no;
	}
	public void setTrain_no(int train_no) {
		this.train_no = train_no;
	}
	public String getTrain_name() {
		return train_name;
	}
	public void setTrain_name(String train_name) {
		this.train_name = train_name;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public double getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(double ticket_price) {
		this.ticket_price = ticket_price;
	}
	@Override
	public String toString() {
		return "Train [train_no=" + train_no + ", train_name=" + train_name + ", source=" + source + ", destination="
				+ destination + ", ticket_price=" + ticket_price + "]";
	}
	
	
}
