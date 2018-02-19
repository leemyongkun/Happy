package org.happy.poor.files.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.happy.poor.files.model.FileVo;
import org.springframework.web.multipart.MultipartFile;

public interface IFilesService {
	public void save(MultipartFile attachFile, String md5FileName);
	public boolean remove(String md5FileName);
	
	public void insert(MultipartFile attachFile,String md5FileName);
	public void delete(String md5FileName);
	public List<HashMap<String,Object>> selectAll();
	
	public HashMap<String,Object> downloadFile(FileVo fileVo);
	public Map<String,Object> getJOSNSet(Object attachFile,String md5FileName, String type, Boolean status);
}
