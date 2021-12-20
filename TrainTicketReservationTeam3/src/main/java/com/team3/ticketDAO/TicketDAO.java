package com.team3.ticketDAO;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TreeMap;


import com.team3.model.Passenger;
import com.team3.model.Train;



public class TicketDAO {
	private static int counter=100;
	private String pnr;
	private Date travelDate;
	private Train train;
	private TreeMap<Passenger, Integer> passenger = new TreeMap<Passenger, Integer>();
	
	
	public TicketDAO(Date travelDate, Train train) {
		super();
		this.travelDate = travelDate;
		this.train = train;
	}
	public int getCounter() {
		return counter;
	}
	public void setCounter(int counter) {
		TicketDAO.counter = counter;
	}
	public String getPnr() {
		return pnr;
	}
	public void setPnr(String pnr) {
		this.pnr = pnr;
	}
	public Date getTravelDate() {
		return travelDate;
	}
	public void setTravelDate(Date travelDate) {
		this.travelDate = travelDate;
	}
	public Train getTrain() {
		return train;
	}
	public void setTrain(Train train) {
		this.train = train;
	}
	public TreeMap<Passenger, Integer> getPassenger() {
		return passenger;
	}
	public void setPassenger(TreeMap<Passenger, Integer> passenger) {
		this.passenger = passenger;
	}
	
	
	
	
	public String generatePNR() {
		String format = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		String dateString = simpleDateFormat.format(travelDate);
		String year = dateString.substring(6,10);
    	String month = dateString.substring(3,5);
    	String day = dateString.substring(0,2);
		char sourse = train.getSource().charAt(0);
		char destination = train.getDestination().charAt(0);
		return (sourse+""+destination+"_"+year+""+month+""+day+"_"+counter);
	}
	public double calcPassengerFare(Passenger p) {
//		double mainFare =0;
		if(p.getAge()<=12) {
			return train.getTicket_price()/2;
		}
		if(p.getAge()>=60) {
			return train.getTicket_price() - ((train.getTicket_price()*3)/5);
		
		}
		if(p.getGender()=='F' || p.getGender()=='f') {
			return train.getTicket_price()- (train.getTicket_price()/4);					
		}
		return train.getTicket_price();
		
	}
	public void addPassenger(String name, int age, char gender) {
		Passenger p = new Passenger(name, age, gender);
//		p.setName(name);
//		p.setAge(age);
//		p.setGender(gender);
		Integer fare =  (int) calcPassengerFare(p);
		passenger.put(p, fare);
		 
	}
	
	private double calculateTotalFare() {
		double totalFare=0;
		for(Passenger p:passenger.keySet()) {
			totalFare += passenger.get(p);
		}		
		return totalFare;
//		int total = 0;
//		for(String p:pmap.keySet()) {
//			total += pmap.get(p);
//		}
	}
	
	
	public StringBuilder generateTicket() {
		StringBuilder strb = new StringBuilder();
		strb.append("PNR \t\t:"+generatePNR());
		strb.append("\nTrain no \t:"+ train.getTrain_no());
		strb.append("\nTrain Name \t:"+train.getTrain_name());
		strb.append("\nFrom \t\t:"+train.getSource());
		strb.append("\nTo \t\t:"+train.getDestination());
		String format = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		String dateString = simpleDateFormat.format(travelDate);
		strb.append("\nTravel Date \t:"+dateString);
		strb.append("\n\nPassanger:");
		strb.append("\nName\t\tAge\t\tGender\t\tFare");
		for(Passenger p:passenger.keySet()) {
			strb.append("\n"+p.getName()+"\t\t"+p.getAge()+"\t\t"+p.getGender()+"\t\t"+passenger.get(p));			
		}
		strb.append("\nTotal price : "+calculateTotalFare());
		
		return strb;
		
	}
	
	public void writeTicket() {
		
		try(FileWriter output = new FileWriter("C:\\Users\\hp\\Documents\\"+generatePNR()+".txt",true);
				BufferedWriter bw = new BufferedWriter(output)){
			StringBuilder st = generateTicket();
			bw.write(st.toString());
			bw.newLine();
			System.out.println("Ticket generated successfully...");
			TicketDAO.counter++;
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
	}
	
	public void displayTreeMap() {
		System.out.println(passenger);
	}
}
