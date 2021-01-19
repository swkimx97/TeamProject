package com.compssa.domain;

import lombok.Data;
import java.util.Date;

@Data
public class ProductQAVO {
	private Long ID;
	private Long User_ID;
	private Long Product_ID;
	private Date Date;
	private String Title;
	private String Content;
}
