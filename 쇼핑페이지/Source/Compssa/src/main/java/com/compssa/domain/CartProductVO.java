package com.compssa.domain;

import lombok.Data;

@Data
public class CartProductVO {
	private Long ID;
	private Long Cart_ID;
	private Long Product_ID;
	private int Count;
}
