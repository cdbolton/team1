package entity;

import java.math.BigDecimal;
import org.joda.time.DateTime;

public class ReservationImpl implements Reservation{
	private int id;
	private String email;
	private Vehicle rentedVehicle;
	private DateTime pickUp;
	private DateTime returnTime;
	private BigDecimal price;
	
	public ReservationImpl(int id, String email, Vehicle rentedVehicle, DateTime pickUp, DateTime returnTime, BigDecimal price){
		this.id = id;
		this.email = email;
		this.rentedVehicle = rentedVehicle;
		this.pickUp = pickUp;
		this.returnTime = returnTime;
		this.price = price;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public Vehicle getRentedVehicle() {
		return rentedVehicle;
	}

	public void setRentedVehicle(Vehicle rentedVehicle) {
		this.rentedVehicle = rentedVehicle;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public DateTime getPickUp() {
		return pickUp;
	}

	public void setPickUp(DateTime pickUp) {
		this.pickUp = pickUp;
	}

	public DateTime getReturnTime() {
		return returnTime;
	}

	public void setReturnTime(DateTime returnTime) {
		this.returnTime = returnTime;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
}
