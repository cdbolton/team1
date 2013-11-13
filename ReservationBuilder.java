package entity;

import java.math.BigDecimal;
import org.joda.time.DateTime;

public class ReservationBuilder{
	private int id;
	private String email;
	private Vehicle rentedVehicle;
	private DateTime pickUp;
	private DateTime returnTime;
	private BigDecimal price;
	
	public ReservationBuilder(){
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
		if(pickUp.isAfter(this.returnTime)){
			throw CarRentalException("The pick up time came before the return time.");
		}
		else{
			this.pickUp = pickUp;
		}
	}

	public void setReturnTime(DateTime returnTime) {
		if(returnTime.isBefore(pickUp)){
			//throw exception
			throw CarRentalException("The return time came before the pick up time.");
		}
		else{
			this.returnTime = returnTime;
		}
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public ReservationImpl create(){
		ReservationImpl reservation = new ReservationImpl(id, email, rentedVehicle, pickUp, returnTime, price);
		
		return reservation;
	}
}
