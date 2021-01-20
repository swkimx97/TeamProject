package com.compssa.domain;

import lombok.Data;
import java.util.Date;

@Data
public class Orders {
	private Long ID;
	private Long ShopUser_ID;
	private Date OrderDate;
	private int TotalPrice;
	private String SenderName;
	private String ReceiverName;
	private String SenderAddr;
	private String ReceiverAddr;
	private String Payment;
}
