package com.compssa.domain;

import lombok.Data;
import java.util.Date;

@Data
public class OrderVO {
	private Long ID;
	private Long User_ID;
	private Date Date;
	private int TotalPrice;
	private String SenderName;
	private String ReceiverName;
	private String SenderAddr;
	private String ReceiverAddr;
	private String Payment;
}
