package entity;

import java.math.BigDecimal;
import org.joda.time.DateTime;

public class ReservationBuilder {
	private int id;
	private String email;
	private Vehicle rentedVehicle;
	private DateTime pickUp;
	private DateTime returnTime;
	private BigDecimal price;
	
	public ReservationBuilder(int id, String email, Vehicle rentedVehicle, DateTime pickUp, DateTime returnTime, BigDecimal price){
		this.id = id;
		this.email = email;
		this.rentedVehicle = rentedVehicle;
		this.pickUp = pickUp;
		this.returnTime = returnTime;
		this.price = price;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setRentedVehicle(Vehicle rentedVehicle) {
		this.rentedVehicle = rentedVehicle;
	}

	public void setPickUp(DateTime pickUp) {
		this.pickUp = pickUp;
	}

	public void setReturnTime(DateTime returnTime) {
		this.returnTime = returnTime;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public void create(){
		new ReservationImpl(id, email, rentedVehicle, pickUp, returnTime, price);
	}
}
