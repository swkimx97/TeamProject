package com.compssa.domain;

import lombok.Data;
import java.util.Date;

@Data
public class ReviewBoardVO {
	private Long ID;
	private Long User_ID;
	private Long Product_ID;
	private String Content;
	private int Point;
	private Date Date;
}
