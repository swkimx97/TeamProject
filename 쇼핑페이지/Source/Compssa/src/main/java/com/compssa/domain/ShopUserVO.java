package com.compssa.domain;

import lombok.Data;
import java.util.Date;
import java.util.List;

@Data
public class ShopUserVO {
	private Long ID;
	private String UserName;
	private String PW;
	private String Name;
	private String AddrNum;
	private String Addr1;
	private String Addr2;
	private int Gender;
	private Date Birth;
	private String Email;
	private String HouseNum;
	private String PhoneNum;
	private Date RegisterDate;
	private List<AuthVO> AuthList;
	
}