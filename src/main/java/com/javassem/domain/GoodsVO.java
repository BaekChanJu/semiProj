package com.javassem.domain;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class GoodsVO {

	private String	g_Id;
	private String	sc_Id;
	private String  ct_Id;
	private String	g_Name;
	private int		g_Price;
	private int		g_Stock;
	private String	g_Message;
	private String	g_Img1;
	private String	g_Img2;
	private String	g_Img3;
	private String	gl_Img1;
	private String	gl_Img2;
	private String	gl_Img3;
	private long	g_Size1;
	private long	g_Size2;
	private long	g_Size3;
	private String  g_Date;
	
	private int page;
	private int perPageNum;
	private int rowStart;
	private int rowEnd;
	private String keyword; //1123일검색기능떄문에 추가
	
	MultipartFile file1;
	MultipartFile file2;
	MultipartFile file3;
	
	
	//1123일검색기능떄문에 추가
			public String getKeyword() {
				return keyword;
			}
			public void setKeyword(String keyword) {
				this.keyword = keyword;
			}
	
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
		
		if (!file1.isEmpty()) {

			this.g_Img1 = file1.getOriginalFilename();
			this.g_Size1 = file1.getSize();

			UUID uuid = UUID.randomUUID();
			this.gl_Img1 = uuid.toString() + "_" + g_Img1;

			File f = new File("D:\\springweb\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + gl_Img1);
			//File f = new File("C:\\Users\\dkfma\\Spring\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + gl_Img1);

			try {
				file1.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;

		if (!file2.isEmpty()) {

			this.g_Img2 = file2.getOriginalFilename();
			this.g_Size2 = file2.getSize();

			UUID uuid = UUID.randomUUID();
			this.gl_Img2 = uuid.toString() + "_" + g_Img2;

			File f = new File("D:\\springweb\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + gl_Img2);
			//File f = new File("C:\\Users\\dkfma\\Spring\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + gl_Img2);
			
			try {
				file2.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}
	public MultipartFile getFile3() {
		return file3;
	}
	public void setFile3(MultipartFile file3) {
		this.file3 = file3;

		if (!file3.isEmpty()) {

			this.g_Img3 = file3.getOriginalFilename();
			this.g_Size3 = file3.getSize();

			UUID uuid = UUID.randomUUID();
			this.gl_Img3 = uuid.toString() + "_" + g_Img3;

			File f = new File("D:\\springweb\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + gl_Img3);
			//File f = new File("C:\\Users\\dkfma\\Spring\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + gl_Img3);

			try {
				file3.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}

	
	public GoodsVO() {
		this.page = 1;
		this.perPageNum = 6;
	}
	
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 6;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}


	
	
	
	public String getG_Date() {
		return g_Date;
	}
	public void setG_Date(String g_Date) {
		this.g_Date = g_Date;
	}
	public String getG_Id() {
		return g_Id;
	}
	public void setG_Id(String g_Id) {
		this.g_Id = g_Id;
	}
	public String getSc_Id() {
		return sc_Id;
	}
	public void setSc_Id(String sc_Id) {
		this.sc_Id = sc_Id;
	}
	public String getCt_Id() {
		return ct_Id;
	}
	public void setCt_Id(String ct_Id) {
		this.ct_Id = ct_Id;
	}
	public String getG_Name() {
		return g_Name;
	}
	public void setG_Name(String g_Name) {
		this.g_Name = g_Name;
	}
	public int getG_Price() {
		return g_Price;
	}
	public void setG_Price(int g_Price) {
		this.g_Price = g_Price;
	}
	public int getG_Stock() {
		return g_Stock;
	}
	public void setG_Stock(int g_Stock) {
		this.g_Stock = g_Stock;
	}
	public String getG_Message() {
		return g_Message;
	}
	public void setG_Message(String g_Message) {
		this.g_Message = g_Message;
	}
	public String getG_Img1() {
		return g_Img1;
	}
	public void setG_Img1(String g_Img1) {
		this.g_Img1 = g_Img1;
	}
	public String getG_Img2() {
		return g_Img2;
	}
	public void setG_Img2(String g_Img2) {
		this.g_Img2 = g_Img2;
	}
	public String getG_Img3() {
		return g_Img3;
	}
	public void setG_Img3(String g_Img3) {
		this.g_Img3 = g_Img3;
	}
	public String getGl_Img1() {
		return gl_Img1;
	}
	public void setGl_Img1(String gl_Img1) {
		this.gl_Img1 = gl_Img1;
	}
	public String getGl_Img2() {
		return gl_Img2;
	}
	public void setGl_Img2(String gl_Img2) {
		this.gl_Img2 = gl_Img2;
	}
	public String getGl_Img3() {
		return gl_Img3;
	}
	public void setGl_Img3(String gl_Img3) {
		this.gl_Img3 = gl_Img3;
	}
	public long getG_Size1() {
		return g_Size1;
	}
	public void setG_Size1(long g_Size1) {
		this.g_Size1 = g_Size1;
	}
	public long getG_Size2() {
		return g_Size2;
	}
	public void setG_Size2(long g_Size2) {
		this.g_Size2 = g_Size2;
	}
	public long getG_Size3() {
		return g_Size3;
	}
	public void setG_Size3(long g_Size3) {
		this.g_Size3 = g_Size3;
	}
	@Override
	public String toString() {
		return "GoodsVO [page=" + page + ", perPageNum=" + perPageNum + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd
				+ "]";
	}
	
	

	

}
