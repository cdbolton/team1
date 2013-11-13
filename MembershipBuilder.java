package entity;

import java.math.BigDecimal;

public class MembershipBuilder{
	BigDecimal cost;
	
	public MembershipBuilder(){
	}
	
	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	
	public MembershipImpl create(){
		MembershipImpl membership = new MembershipImpl(cost);
		
		return membership;
	}
}
