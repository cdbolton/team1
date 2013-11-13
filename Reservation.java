package entity;

import java.math.BigDecimal;

import org.joda.time.DateTime;

public interface Reservation {

	public abstract int getId();

	public abstract void setId(int id);

	public abstract String getEmail();

	public abstract Vehicle getRentedVehicle();

	public abstract void setRentedVehicle(Vehicle rentedVehicle);

	public abstract void setEmail(String email);

	public abstract DateTime getPickUp();

	public abstract void setPickUp(DateTime pickUp);

	public abstract DateTime getReturnTime();

	public abstract void setReturnTime(DateTime returnTime);

	public abstract BigDecimal getPrice();

	public abstract void setPrice(BigDecimal price);

}