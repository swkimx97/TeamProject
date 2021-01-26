package com.compssa.domain;

import java.util.Date;
import lombok.Data;

@Data
public class ProductVO {
	private Long ID;
	private Long Category_ID;
	private String Name;
	private int Price;
	private String Description;
	private int Discount;
	private Date ProductDate;
	private int Point;
}
