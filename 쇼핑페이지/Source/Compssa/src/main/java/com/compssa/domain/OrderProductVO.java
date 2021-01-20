package com.compssa.domain;

import lombok.Data;

@Data
public class OrderProductVO {
	private Long ID;
	private Long Order_ID;
	private Long Product_ID;
	private String Name;
	private int Count;
	private int Price;
	private int Discount;
	private int TotalPrice;
}
