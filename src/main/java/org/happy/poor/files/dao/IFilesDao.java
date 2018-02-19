package org.happy.poor.files.dao;

import java.util.HashMap;
import java.util.List;

public interface IFilesDao {
	void insert(HashMap<String,String> fileInfo);
	void delete(HashMap<String,String> fileInfo);
	List<HashMap<String,Object>> selectAll(String id);
	
}
