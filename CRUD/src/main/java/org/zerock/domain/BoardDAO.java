package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDAO {

	private Long bno;
	private String title, content, writer;
	private Date regdate, updateDate;
	
}
