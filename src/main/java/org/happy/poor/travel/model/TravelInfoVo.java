package org.happy.poor.travel.model;

import java.util.List;


public class TravelInfoVo {
	private String flag;
	private int idx;
	private String contents_type;
	private String title;
	private String contents;
	private String nohtml_contents;
	private String id;
	private String reg_date;
	private String image;
	private int imagesCount;
	
	private List<String> images;
	
	
	public int getImagesCount() {
		return imagesCount;
	}
	public void setImagesCount(int imagesCount) {
		this.imagesCount = imagesCount;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public List<String> getImages() {
		return images;
	}
	public void setImages(List<String> images) {
		this.images = images;
	}
	public String getNohtml_contents() {
		return nohtml_contents;
	}
	public void setNohtml_contents(String nohtml_contents) {
		this.nohtml_contents = nohtml_contents;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getContents_type() {
		return contents_type;
	}
	public void setContents_type(String contents_type) {
		this.contents_type = contents_type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
