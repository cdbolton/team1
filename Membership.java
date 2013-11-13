package entity;

import java.math.BigDecimal;

public interface Membership {

	public abstract BigDecimal getCost();

	public abstract void setCost(BigDecimal cost);

}