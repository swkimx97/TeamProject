package com.compssa.domain;

import lombok.Data;
import java.util.Date;

@Data
public class ReviewBoardVO {
	private Long ID;
	private Long ShopUser_ID;
	private Long Product_ID;
	private String Title;
	private String Content;
	private Date ReviewDate;
}
