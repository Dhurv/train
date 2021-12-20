package com.team3.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.team3.model.Passenger;
import com.team3.model.Train;
import com.team3.repository.Repository;
import com.team3.ticketDAO.TicketDAO;

@Controller
public class TrainController {

	@Autowired
	Repository repo;
	
	TicketDAO Tkdao;
	
	ArrayList<Passenger> listOfPassenger = new ArrayList<Passenger>();
	String pName;
	String date;
	
	Train bookedTrain;

	@RequestMapping("/")
	public String showIndexPage() {
		return "index";
	}
	
	//display train no in different page using trainNo if found otherwise give a message to the userf
	@RequestMapping(value="/findTrains",method=RequestMethod.POST) // url from searchproductid.jsp
	 public ModelAndView submitSearchProductForm(@RequestParam("trainNo") int trainNo, @RequestParam("TravelDate") String TravelDate )
	 { 
		Optional<Train> t = repo.findById(trainNo);
//		System.out.println(TravelDate);
		date = TravelDate;
//		Train product = repo.getById(trainNo);
		if(t.isPresent()) {
			bookedTrain = t.get();
			ModelAndView model = new ModelAndView("trainList"); // searchproductid.jsp
			model.addObject("train",bookedTrain);
			return model;
		}
		ModelAndView model1 = new ModelAndView("index");
		String msg = "Train not found";
		model1.addObject("msg", msg);
		return model1;
	 }
	
	//Navbar home page redirecting 
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	//AdminLogin page redirection
	@RequestMapping(value="/adminLogin", method = RequestMethod.GET)
	public ModelAndView adminLogin() {
		ModelAndView model = new ModelAndView("adminLogin");
		return model;
	}
	
	//AdminPanal page redirection
	@RequestMapping(value="/adminPanal", method = RequestMethod.GET)
	public ModelAndView adminPanal() {
		ModelAndView model = new ModelAndView("adminPanal");
		return model;
	}
	
	//Login Page Redirection
	@RequestMapping(value="/profile", method = RequestMethod.GET)
	public ModelAndView userPanal() {
		ModelAndView model = new ModelAndView("userLogin");
		return model;
	}
	
	
	
	
	
	
	
	
	
	
	//payment page redirectionn 
	@RequestMapping(value="/payment", method = RequestMethod.GET)
	public ModelAndView payment() {
		String format = "yyyy-MM-dd";
		Date dt;
		try {
			dt = new SimpleDateFormat(format).parse(date);
			TicketDAO ticketDao = new TicketDAO(dt, bookedTrain);
			
			for(Passenger p:listOfPassenger) {
				ticketDao.addPassenger(p.getName(), p.getAge(), p.getGender());
			}
			double totalFare=0;
			for(Integer p:ticketDao.getPassenger().values()) {
				totalFare += p;
			}		
			
			ModelAndView model = new ModelAndView("payment");
			model.addObject("totalFare", totalFare);
			System.out.println("this is the /payment controller");
			return model;
			
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView model = new ModelAndView("bookTrain");
//		System.out.println("this is the /payment controller");
		return model;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/trainDetails", method = RequestMethod.POST)
	public ModelAndView getTrins(@RequestParam("source") String source, @RequestParam("destination") String destination) {
		List<Train> t = repo.findAll();
		for(Train t1:t) {
			if(t1.getSource().equalsIgnoreCase(source) && t1.getDestination().equalsIgnoreCase(destination)) {
				System.out.println("Found a train");
				ModelAndView model1 = new ModelAndView("trainList1");
				model1.addObject("foundTrain", t1);
				return model1;
			}
		}
		ModelAndView model = new ModelAndView("index");
		String msg = "Train Not Found";
		model.addObject("msg1", msg);
		return model;
	}
	
	
	//Clicking on book Train it will take all the details of the train and send it to the next page
	@RequestMapping(value="/bookTrain")
	 public ModelAndView submitAddProductForm() {
		
			ModelAndView model = new ModelAndView("bookTrain");
			return model;
		
	}
	
	
	
	
	@RequestMapping(value="/addPassengers",method= {RequestMethod.POST, RequestMethod.PUT})
	 public ModelAndView submitAddProductForm(@ModelAttribute("passenger") Passenger passenger)
	 {
		listOfPassenger.add(passenger);
//		Integer fare = (int)dao.calcPassengerFare(passenger);
//		passenger1.put(passenger, fare);
//		System.out.println(passenger1);
//		System.out.println("this is from arrayList"+listOfPassenger);
		ModelAndView model = new ModelAndView("bookTrain");
		model.addObject("passengerDetails", listOfPassenger);
		return model;
	 }
	// Programming is running fine till here
	
	
	@RequestMapping(value="/deletePassenger", method = RequestMethod.POST)
	public ModelAndView deletePassenger(@ModelAttribute("passenger") Passenger passenger) {
//		System.out.println(passenger);
		
//		System.out.println("this is from the delete method "+ passenger);
//		listOfPassenger.remove(passenger);
		
//		listOfPassenger.remove(0);
		String pName = passenger.getName();
		
		
		listOfPassenger.contains(passenger); //true false 
		int index =0;
		for(Passenger p:listOfPassenger) {
			if(p.getName().equals(passenger.getName())) {
				listOfPassenger.remove(index);
				System.out.println(p+" is removed!");
				break;
			}
			index++;
		}
		
		System.out.println(listOfPassenger.toString());
		
		
//		System.out.println(listOfPassenger.indexOf(passenger));
//		boolean flag = (listOfPassenger.contains(passenger));
//		System.out.println(flag);
		ModelAndView model1 = new ModelAndView("bookTrain");
		model1.addObject("passengerDetails", listOfPassenger);
		return model1;
	}
	
	
	
	
//	//receiving name string variable from addpassenger page
//	@RequestMapping(value = "/getName/{name}")
//	public void getName(@PathVariable("name") String name) {
//		pName = name;
//		System.out.println("from js function "+ pName + " " + name);
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	//this is for getting all the train details from the backend 
	@RequestMapping(value = "/getalltrains")
	public ModelAndView findAllTrain() {
		List<Train> list = repo.findAll();
		for(Train t:list) {
			System.out.println();
		}
		ModelAndView model = new ModelAndView("allTrains");
		model.addObject("key", list);
		return model;
 	}
	
}











