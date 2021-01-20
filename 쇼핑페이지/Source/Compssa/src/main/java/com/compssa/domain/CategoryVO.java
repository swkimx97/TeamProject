package com.compssa.domain;

import lombok.Data;

@Data
public class CategoryVO {
	private Long ID;
	private String Name;
	private int Count;
	private Long ParentID;
}
