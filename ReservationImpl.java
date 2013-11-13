package entity;

import java.math.BigDecimal;
import org.joda.time.DateTime;

public class ReservationImpl implements Reservaton, Reservation {
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

	/* (non-Javadoc)
	 * @see entity.Reservation#getId()
	 */
	@Override
	public int getId() {
		return id;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#setId(int)
	 */
	@Override
	public void setId(int id) {
		this.id = id;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#getEmail()
	 */
	@Override
	public String getEmail() {
		return email;
	}

	@Override
	public Vehicle getRentedVehicle() {
		return rentedVehicle;
	}

	@Override
	public void setRentedVehicle(Vehicle rentedVehicle) {
		this.rentedVehicle = rentedVehicle;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#setEmail(java.lang.String)
	 */
	@Override
	public void setEmail(String email) {
		this.email = email;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#getPickUp()
	 */
	@Override
	public DateTime getPickUp() {
		return pickUp;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#setPickUp(org.joda.time.DateTime)
	 */
	@Override
	public void setPickUp(DateTime pickUp) {
		this.pickUp = pickUp;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#getReturnTime()
	 */
	@Override
	public DateTime getReturnTime() {
		return returnTime;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#setReturnTime(org.joda.time.DateTime)
	 */
	@Override
	public void setReturnTime(DateTime returnTime) {
		this.returnTime = returnTime;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#getPrice()
	 */
	@Override
	public BigDecimal getPrice() {
		return price;
	}

	/* (non-Javadoc)
	 * @see entity.Reservation#setPrice(java.math.BigDecimal)
	 */
	@Override
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
}
