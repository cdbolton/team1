package entity;

import java.math.BigDecimal;

public class MembershipImpl implements Membership {
	BigDecimal cost;
	
	public MembershipImpl(BigDecimal cost){
		this.cost = cost;
	}

	public BigDecimal getCost() {
		return cost;
	}

	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	
}
