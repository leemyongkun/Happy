package org.happy.poor.files.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public class FileVo  {
	private List<MultipartFile> attachFiles;
	private List<MultipartFile> up_file;
	private List<MultipartFile> upfile;
	
	private String originalFileName;
	private String md5FileName;
	private String fileType;
	
	
	
	public List<MultipartFile> getUpfile() {
		return upfile;
	}

	public void setUpfile(List<MultipartFile> upfile) {
		this.upfile = upfile;
	}

	public List<MultipartFile> getUp_file() {
		return up_file;
	}

	public void setUp_file(List<MultipartFile> up_file) {
		this.up_file = up_file;
	}

	public List<MultipartFile> getAttachFiles() {
		return attachFiles;
	}

	public void setAttachFiles(List<MultipartFile> attachFiles) {
		this.attachFiles = attachFiles;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getMd5FileName() {
		return md5FileName;
	}

	public void setMd5FileName(String md5FileName) {
		this.md5FileName = md5FileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	
	
}
